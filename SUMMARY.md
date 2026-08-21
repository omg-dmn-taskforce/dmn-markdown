# Build pipeline: DMN 1.7 DOCX → Markdown → PDF

## Goal

Produce `output.pdf` from `DMN_1.7_SOURCE.docx` via a markdown pipeline using `./build-pdf.sh`.

## Current state

`./build-pdf.sh` produces `DMN_1.7.pdf` (272 pages, ~6.8 MB).
The reference PDF `DMN_1.7_SOURCE.pdf` is 270 pages / 12 MB (A4, full Word formatting, margin notes, richer layout).

The page count difference is 2 pages. The output uses Letter size (612×792 pts) vs A4 (595×842 pts) in the source — minor layout shifts from paper width difference account for this.

---

## Chapter structure (output vs source)

| Chapter | Output | Source |
|---------|--------|--------|
| 1 | Scope (template) | Scope |
| 2 | Conformance (template) | Conformance |
| 3 | References (template) | References |
| 4 | Terms and Definitions (template) | Terms and Definitions |
| 5 | Symbols (template) | Symbols |
| 6 | Requirements (DRG and DRD) Introduction | Requirements (DRG and DRD) |
| 7 | Relating Decision Logic to Decision Requirements | Relating Decision Logic... |
| 8 | Decision Table | Decision Table |
| 9 | Simple Expression Language (S-FEEL) | S-FEEL |
| 10 | Expression Language (FEEL) | FEEL |
| 11 | B-FEEL | B-FEEL |
| A | DMN Examples | DMN Examples |
| B | Exchange Formats | Exchange Formats |
| C | DMN Diagram Interchange (DMN DI) | DMN DI |
| D | ANNEXES (informative note) | ANNEXES (informative) |

Chapter numbering matches the source.

---

## What was done

### 1. `build-pdf.sh`

Script that checks for a Docker image (`dmn-markdown`), builds it if missing, then runs `make` inside the container and copies `DMN_1.7.pdf` to `output.pdf`.

### 2. `split_output.py`

Converts `output.md` (pandoc output from the DOCX) into numbered chapter `.md` files expected by the OMG LaTeX template.

### 3. Makefile fixes

| Fix | Reason |
|-----|--------|
| `SHELL := /bin/bash` | `_core.mk` uses `(( ))` bash arithmetic; Docker container default `/bin/sh` is dash |
| `build/omgLaTeX.yaml: omgLaTeX.yaml` | Explicit rule so local YAML override wins over `_core.mk` pattern rule |
| `spec: build/media` | Copies images to build dir; rasterises SVGs to PNG via `rsvg-convert` |
| `spec: build/.brace_A_Annexes` | Creates literal `build/{A_Annexes}` file (brace chars in name) required by `\pdffilesize{\userfiles{A_Annexes}}` |
| **Heading-level shift** (sed in spec recipe) | pandoc uses `top-level-division: section` throughout; `7+_Technical_Content.tex` and `A_Annexes.tex` need their headings shifted up one level (`\section→\chapter`, `\subsection→\section`, etc.) so that chapters 6–11 and Appendices A–D appear at `\chapter{}` level |
| **Manual 3-pass pdflatex** (replaces latexmk) | `latexmk`'s second pass fails because `##` in `.toc` URLs causes "Illegal parameter number in \Hy@tempa"; manual passes with `sed -i 's/##/\\#/g'` between them fixes this |

### 4. `omgLaTeX.yaml`

Local override of the core pandoc defaults removing `table-caption-position` and `figure-caption-position` (not supported by pandoc 2.9.2 in the Debian Bookworm container).

### 5. `_Specification_AuthorSettings.tex` additions

#### pandoc compatibility fixes

| Fix | Reason |
|-----|--------|
| `\providecommand{\tightlist}{...}` | pandoc emits `\tightlist` for compact lists but only defines it in standalone documents |
| `\usepackage{calc}` | `\real{0.xxxx}` in pandoc table column widths |
| `\usepackage{booktabs}` | `\toprule`, `\midrule`, `\bottomrule` in pandoc tables |
| `\usepackage{array}` | `>{\raggedright\arraybackslash}` column specifiers |
| `\usepackage{multirow}` | `\multirow` in pandoc-generated tables |
| `\usepackage{amssymb}` | `\blacksquare` used in unicode mapping |
| `\robustify\phantomsection` | pandoc wraps table captions in `\href{url}{\phantomsection\label{...}text}`; `\phantomsection` crashes inside `longtable` captions without robustification |
| `\renewcommand\contentsline` with `\let\href\@secondoftwo` | Strip `\href{url}{text}` in TOC entries so URLs from Word cross-references don't appear in the table of contents |
| `\pdfstringdefDisableCommands{\let\href\@secondoftwo}` | Suppress URL in PDF bookmarks |
| `\AtBeginEnvironment{longtable}{\renewcommand{\href}[2]{#2}}` | Strip `\href` inside longtable caption bodies |
| `\includesvg` redefined to `\includegraphics` | SVG images pre-rasterised to PNG; inkscape not available in container |

#### Unicode character mappings (`newunicodechar`)

| Character | Codepoint | Mapping |
|-----------|-----------|---------|
| `‑` | U+2011 | `-` (non-breaking hyphen) |
| `→` | U+2192 | `\ensuremath{\rightarrow}` |
| `≤` | U+2264 | `\ensuremath{\leq}` |
| `≡` | U+2261 | `\ensuremath{\equiv}` |
| `ε` | U+03B5 | `\ensuremath{\varepsilon}` |
| `≥` | U+2265 | `\ensuremath{\geq}` |
| `−` | U+2212 | `\ensuremath{-}` |
| `•` | U+2022 | `\textbullet` |
| `▪` | U+25AA | `\ensuremath{\blacksquare}` |
| `🐎` | U+1F40E | *(empty — Word artifact)* |
| `ὀ` | U+1F40 | `o` (fallback) |
| `` | U+F02E | `$\cdot$` (Wingdings private-use) |

### 6. `media/` directory

Real images extracted from `DMN_1.7_SOURCE.docx` by running pandoc inside the Docker container. 188 files: JPEG/PNG figures plus 18 SVG diagrams. SVGs rasterised to PNG via `rsvg-convert` (from `librsvg2-bin`, added to Dockerfile).

---

## Key error history and fixes

### Error: "Illegal parameter number in definition of \Hy@tempa"

- **Root cause**: `##` in `.toc` file URLs. pandoc converts `[text](url#anchor)` in headings to `\href{url#anchor}{text}`. pdflatex writes this into `.toc` with `#` doubled to `##`. On the next pass, `\pdfstringdef` processes the `.toc` entry via `\protected@edef`, collapsing `##` to a single catcode-6 `#`. That `#` followed by a letter triggers the error.
- **Fix**: `sed -i 's/##/\\#/g' *.toc` between each pdflatex pass.

### Error: build succeeds only on first pass (latexmk)

- **Root cause**: latexmk runs multiple passes; the `.toc` `##` error kills pass 2.
- **Fix**: Replace latexmk with 3 manual `pdflatex` passes, sed-fixing `.toc` between each.

### Missing annexes (A_Annexes not included)

- **Root cause**: `\pdffilesize{\userfiles{A_Annexes}}` searches for literal filename `"./{A_Annexes}"` (with braces) — pdfTeX's filename scanner stops at the first `{`, producing brace characters in the name.
- **Fix**: Makefile `.brace_A_Annexes` stamp target copies `build/A_Annexes.tex` to `build/{A_Annexes}`.

### Heading level mismatch (chapters 6–11 appearing as sections)

- **Root cause**: pandoc's `top-level-division: section` converts `# Heading` → `\section{}`. All `.md` files are processed with this setting. But `7+_Technical_Content.tex` and `A_Annexes.tex` supply their own top-level headings that should be `\chapter{}`.
- **Fix**: Makefile sed step shifts all heading commands up one level in those two files before pdflatex runs.

---

## Remaining known issues

| Issue | Severity | Notes |
|-------|----------|-------|
| `\href{https://www.omg.org/spec/SCE/1.0}{...}` in body text | Medium | ~1900 occurrences from Word cross-reference artifacts. Renders as blue hyperlinks in body paragraphs. Stripping these from the markdown before pandoc conversion would clean up the output. |
| Overfull hboxes (853) | Low | Mostly from long URLs appearing in paragraph text |
| Multiply-defined labels (`introduction`, `section`, `section-1`) | Low | pandoc uses the same slug for same-named headings in different files; non-fatal |
| Undefined `_Ref...` references | Low | Word internal cross-reference bookmarks; pandoc converts them to `\hypertarget` but doesn't generate corresponding `\hyperref` anchors — links are broken but non-fatal |
| Empty bibliography | Low | `specification.bib` has no entries; References chapter shows empty normative/non-normative sections |
| Empty section titles (empty `\subsection{}`) | Low | A few headings in source were blank; appear as numbered sections with no title |
| Paper size: Letter vs A4 | Low | Output is Letter (612×792 pts); source is A4 (595×842 pts). This accounts for the 2-page difference (272 vs 270). |
