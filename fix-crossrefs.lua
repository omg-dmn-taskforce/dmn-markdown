--[[
  fix-crossrefs.lua

  Converts the manual, Word-derived figure/table numbering in the DMN
  specification into pandoc-crossref auto-numbering.

  For every figure and table it:
    * reads the Word bookmark id from the leading `.anchor` span in the caption
      (e.g. `_Ref113615687`), which is what the body cross-references point at,
    * moves that id onto the figure/table as a `fig:`/`tbl:` crossref label,
    * strips the baked-in "Figure 5-1:" / "Table 1:" prefix and the italic
      auto-number (`Emph`), leaving just the human caption text.

  It also merges the "standalone caption paragraph after a bare image" layout
  into a proper Figure, and rewrites body cross-reference links
  (`[Figure 5-1](#_Ref113615687)`) into pandoc-crossref citations
  (`[@fig:_Ref113615687]`).

  Usage (SINGLE pass — filter and pandoc-crossref must run in the same pandoc
  invocation). The boxed-expression figures are non-image Figure nodes, which
  cannot round-trip through Markdown as figures; numbering them therefore has to
  happen before serialization, i.e. in this one command:

    pandoc DMN_1.7_SOURCE.docx \
      --lua-filter=fix-crossrefs.lua \
      --metadata-file=crossref.yaml \
      --filter pandoc-crossref \
      --wrap=none --extract-media=. \
      -o output.md

  Notes:
    * Default `-o *.md` uses pandoc's `markdown` dialect (implicit_figures on),
      so image figures serialize as `![Figure 5-1: cap](media/..){#fig:..}`.
      Adding `-t gfm` would force every figure into raw <figure> HTML instead.
    * `--extract-media=.` writes images to ./media/ referenced as ./media/..;
      `--extract-media=media` doubles the path to media/media/ for docx input.

  Do NOT add --citeproc: the body refs are Cite nodes (`[@fig:...]`) that
  pandoc-crossref must resolve; citeproc would treat them as bibliography keys.
--]]

-- id -> "fig" | "tbl", populated in pass 1, consumed in pass 2
local kind_by_id = {}

-- Counter for figures/tables that carry no Word bookmark (nothing references
-- them). They still get a synthesized label so pandoc-crossref numbers them.
local auto_n = 0
local function next_label(prefix)
  auto_n = auto_n + 1
  return prefix .. ":auto-" .. auto_n
end

-- Leading whitespace / soft break / hard break that Word may emit before the
-- caption's real content.
local function is_lead_ws(el)
  return el.t == "Space" or el.t == "SoftBreak" or el.t == "LineBreak"
end

-- Return the bookmark id if the first non-whitespace inline is an empty
-- `.anchor` span.
local function anchor_id(inlines)
  local first
  for _, el in ipairs(inlines) do
    if not is_lead_ws(el) then first = el break end
  end
  if first and first.t == "Span" and first.identifier ~= "" then
    for _, c in ipairs(first.classes) do
      if c == "anchor" then return first.identifier end
    end
  end
  return nil
end

-- Does the caption's first real word (skipping the anchor span / whitespace)
-- equal `word` ("Figure" or "Table")?
local function starts_with_word(inlines, word)
  for _, el in ipairs(inlines) do
    if el.t == "Span" or is_lead_ws(el) then
      -- skip leading anchor span and whitespace
    else
      return el.t == "Str" and el.text == word
    end
  end
  return false
end

-- Is there a `Str` ending in ":" within the leading label region? Guards
-- against wiping a caption that has no recognisable "Figure N:" prefix.
local function has_label_colon(inlines)
  for i, el in ipairs(inlines) do
    if i > 10 then break end
    if el.t == "Str" and el.text:match(":$") then return true end
  end
  return false
end

-- Find the first inline-bearing block in a caption's blocks, descending into
-- the BlockQuote / Div wrappers Word styling sometimes produces.
local function first_para(blocks)
  for _, b in ipairs(blocks) do
    if b.t == "Para" or b.t == "Plain" then
      return b
    elseif b.t == "BlockQuote" or b.t == "Div" then
      local p = first_para(b.content)
      if p then return p end
    end
  end
  return nil
end

-- Drop the anchor span + "Figure 5-1:" / "Table 1:" prefix, returning only the
-- descriptive caption text. Cuts everything up to and including the first
-- `Str` that ends in ":".
local function clean_caption(inlines)
  local out = {}
  local cutting = true
  for _, el in ipairs(inlines) do
    if cutting then
      if el.t == "Str" and el.text:match(":$") then
        cutting = false -- drop this token too, keep the rest
      end
    else
      out[#out + 1] = el
    end
  end
  while out[1] and is_lead_ws(out[1]) do
    table.remove(out, 1)
  end
  return out
end

-- Word sometimes bolds the whole caption, so the "Table N:" text sits inside a
-- Strong. Splice out the first Strong one level up so the rest of the pipeline
-- sees a flat "Table" / "Figure" / ":" token stream (captions aren't bold in
-- the rendered output anyway).
local function unwrap_leading_strong(inl)
  local out = {}
  local done = false
  for _, el in ipairs(inl) do
    if not done and el.t == "Strong" then
      for _, c in ipairs(el.content) do out[#out + 1] = c end
      done = true
    else
      out[#out + 1] = el
    end
  end
  return out
end

-- Does this inline list open with "Figure N:" or "Table N:" (the manual
-- Word label)? Node *type*, not this word, decides the fig:/tbl: prefix, since
-- the source occasionally captions a table "Figure ..." and vice versa.
local function is_caption_start(inl)
  local flat = unwrap_leading_strong(inl)
  return (starts_with_word(flat, "Figure") or starts_with_word(flat, "Table"))
      and has_label_colon(flat)
end

-- For a "Figure/Table N:" caption, return its crossref label and the cleaned
-- caption inlines (prefix stripped). Returns nil if it isn't such a caption.
-- `prefix` ("fig"/"tbl") comes from the host node's type.
local function process_caption(inl, prefix)
  local flat = unwrap_leading_strong(inl)
  if not is_caption_start(flat) then return nil end
  local id = anchor_id(flat)
  local label
  if id then
    label = prefix .. ":" .. id
    kind_by_id[id] = prefix
  else
    label = next_label(prefix)
  end
  return label, clean_caption(flat)
end

-- The `pandoc -t latex` step in the OMG build re-reads these .md files with
-- an older pandoc that parses `![...](...){#fig:id}` figure-attribute syntax
-- fine, but silently fails to parse `: Caption {#tbl:id}` table-caption
-- attribute syntax on read (even though it writes it correctly) — it comes
-- back as garbled literal text `\caption{Caption \{\#tbl:id\}}` instead of a
-- real \label{}. So for tables, skip node.identifier entirely and append an
-- invisible raw-LaTeX \label{} straight into the caption text instead; LaTeX
-- accepts \label{} inside \caption{}'s argument, and this round-trips through
-- markdown as plain text regardless of attribute-parsing support.
-- Escape LaTeX special characters in plain text destined for a hand-emitted
-- raw-LaTeX block (e.g. a \caption{} argument built from stringified inlines).
local function latex_escape(s)
  s = s:gsub("\\", "\\textbackslash{}")
  s = s:gsub("([%%#&_{}$])", "\\%1")
  s = s:gsub("~", "\\textasciitilde{}")
  s = s:gsub("%^", "\\textasciicircum{}")
  return s
end

local function append_latex_label(inlines, label)
  local out = {}
  for _, el in ipairs(inlines) do out[#out + 1] = el end
  out[#out + 1] = pandoc.Space()
  out[#out + 1] = pandoc.RawInline("latex", "\\label{" .. label .. "}")
  return out
end

-- Relabel a Figure/Table node whose own caption carries the manual prefix.
local function relabel(node, prefix)
  local para = first_para(node.caption.long)
  if not para then return nil end
  local label, cleaned = process_caption(para.content, prefix)
  if not label then return nil end
  if prefix == "tbl" then
    para.content = append_latex_label(cleaned, label)
  else
    node.identifier = label
    para.content = cleaned
  end
  return node
end

-- ---- Pass 1: transform figures, tables, and standalone-caption layouts ------

local function Figure(fig)
  return relabel(fig, "fig")
end

local function Table(tbl)
  return relabel(tbl, "tbl")
end

local function is_image_para(b)
  return (b.t == "Para" or b.t == "Plain")
      and #b.content == 1 and b.content[1].t == "Image"
end

local function is_caption_para(b)
  return (b.t == "Para" or b.t == "Plain") and is_caption_start(b.content)
end

-- The leading label word of a caption ("Figure" / "Table"), or nil.
local function caption_word(inl)
  local flat = unwrap_leading_strong(inl)
  for _, el in ipairs(flat) do
    if el.t == "Span" or is_lead_ws(el) then
      -- skip
    elseif el.t == "Str" and (el.text == "Figure" or el.text == "Table") then
      return el.text
    else
      return nil
    end
  end
  return nil
end

local function new_caption(inl)
  return pandoc.Caption(pandoc.Blocks({ pandoc.Plain(inl) }))
end

-- Attach a standalone caption paragraph to its adjacent element. Handles the
-- Word layouts pandoc leaves unassociated:
--   * Para[Image]  followed by  a caption Para   -> one Figure node
--   * an unlabeled Figure  followed by  a caption Para (double caption)
--   * a caption Para  above  a caption-less Table (caption-over-table)
--   * a boxed-expression BlockQuote / caption-less Table  followed by  a
--     "Figure N:" caption  -> wrap it in a Figure so crossref numbers it
local function Blocks(blocks)
  local res = {}
  local i = 1
  while i <= #blocks do
    local b = blocks[i]
    local nb = blocks[i + 1]
    local step = 1

    if nb and is_caption_para(nb) and is_image_para(b) then
      local label, cleaned = process_caption(nb.content, "fig")
      local fig = pandoc.Figure(pandoc.Blocks({ pandoc.Plain({ b.content[1] }) }),
        new_caption(cleaned))
      fig.identifier = label
      res[#res + 1] = fig
      step = 2
    elseif nb and is_caption_para(nb) and b.t == "Figure" and b.identifier == "" then
      b.identifier = process_caption(nb.content, "fig")
      res[#res + 1] = b
      step = 2
    elseif nb and nb.t == "Table" and #nb.caption.long == 0 and is_caption_para(b) then
      local label, cleaned = process_caption(b.content, "tbl")
      nb.caption = new_caption(append_latex_label(cleaned, label))
      res[#res + 1] = nb
      step = 2
    elseif nb and is_caption_para(nb) and caption_word(nb.content) == "Figure"
        and b.t == "Table" and #b.caption.long == 0 then
      -- Captioned "Figure" in the source, but structurally a table: LaTeX's
      -- longtable cannot be nested inside a \begin{figure} float (fatal "No
      -- counter 'none' defined" error), so it must stay a genuine table and
      -- get numbered in the table sequence rather than the figure sequence.
      local label, cleaned = process_caption(nb.content, "tbl")
      b.caption = new_caption(append_latex_label(cleaned, label))
      res[#res + 1] = b
      step = 2
    elseif nb and is_caption_para(nb) and caption_word(nb.content) == "Figure"
        and b.t == "BlockQuote" then
      -- A non-image Figure has no native markdown syntax — it round-trips as
      -- raw HTML <figure>, which the second (chapter.md -> latex) pandoc
      -- pass in the OMG build reads back as unstructured plain text, losing
      -- the label entirely. Hand-emit the figure environment as ONE raw
      -- LaTeX block instead: pandoc's raw_tex extension treats a bare
      -- \begin{figure}...\end{figure} span in markdown as one opaque raw
      -- block once it sees \begin{figure}, so any live AST content placed
      -- *inside* it (e.g. a BlockQuote) gets swallowed as literal text
      -- rather than re-parsed. Pre-render the wrapped content to LaTeX text
      -- now (via pandoc.write) so nothing is left for the second pass to
      -- parse — it is already final text by the time it gets there.
      local label, cleaned = process_caption(nb.content, "fig")
      local caption_text = latex_escape(pandoc.utils.stringify(cleaned))
      local body_latex = pandoc.write(pandoc.Pandoc({ b }), "latex")
      local raw = "\\begin{figure}[htbp]\n\\centering\n" .. body_latex ..
        "\n\\caption{" .. caption_text .. "}\\label{" .. label .. "}\n\\end{figure}"
      res[#res + 1] = pandoc.RawBlock("latex", raw)
      step = 2
    else
      res[#res + 1] = b
    end
    i = i + step
  end
  return res
end

-- ---- Pass 2: rewrite body cross-reference links into LaTeX \autoref -------
--
-- The OMG PDF pipeline runs plain `pandoc -t latex` per chapter file (no
-- pandoc-crossref, no citeproc), and LaTeX numbers figures/tables itself via
-- its own chapter.figure counters. A body reference therefore must resolve
-- at LaTeX-compile time, not be baked as static text — otherwise it silently
-- goes stale the moment chapter order or content changes. Emit a raw LaTeX
-- \autoref{...}, which pandoc's markdown writer preserves as a
-- `\autoref{...}`{=latex} raw-inline span and the LaTeX writer passes through
-- verbatim; hyperref (already loaded) resolves it against the node's own
-- \label{...} at compile time.

local function Link(l)
  local id = l.target:match("^#(.+)$")
  if id and kind_by_id[id] then
    local cid = kind_by_id[id] .. ":" .. id
    return pandoc.RawInline("latex", "\\autoref{" .. cid .. "}")
  end
  return nil
end

return {
  { Figure = Figure, Table = Table, Blocks = Blocks },
  { Link = Link },
}
