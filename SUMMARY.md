# Build pipeline: DMN 1.7 DOCX → Markdown → PDF

## Goal

Produce `output.pdf` from `DMN_1.7_SOURCE.docx` via a markdown pipeline using `./build-pdf.sh`.

## Current state

`./build-pdf.sh` produces `output.pdf` (184 pages, text-only first pass).
The reference PDF `DMN_1.7_SOURCE.pdf` is 270 pages (includes images and full Word formatting).

---

## What was done

### 1. `build-pdf.sh`

Script that checks for a Docker image (`dmn-markdown`), builds it if missing, then runs `make` inside the container and copies `DMN_1.7.pdf` to `output.pdf`.

### 2. `split_output.py`

Converts `output.md` (pandoc output from the DOCX) into numbered chapter `.md` files expected by the OMG LaTeX template:

| File | Template chapter |
|------|-----------------|
| `1_Scope.md` | `\chapter{Scope}` (heading stripped — template provides it) |
| `2_Basic_Conformance.md` | `\chapter{Conformance}` (heading stripped) |
| `0_Additional.md` | Preamble: Acknowledgements |
| `0_Introduction.md` | Preamble: Introduction to DMN |
| `7+_Technical_Content.md` | Technical chapters 5–10 (merged) |
| `A_Annexes.md` | Annex chapters 11–14 (merged) |

The script also writes `MANUAL_ADJUSTMENTS.md` documenting the mapping and known issues.

### 3. Makefile fixes

- `SHELL := /bin/bash` — `_core.mk` uses `(( ))` bash arithmetic that fails in dash (Docker default `/bin/sh`).
- `build/omgLaTeX.yaml: omgLaTeX.yaml` — explicit rule so the local YAML override wins over the pattern rule in `_core.mk`.
- `spec: build/media` + `build/media: media | build` — copies placeholder images into the build directory.

### 4. `omgLaTeX.yaml`

Local override of the core pandoc defaults removing `table-caption-position` and `figure-caption-position` (not supported by pandoc 2.9.2 in the Debian Bookworm container).

### 5. `_Specification_AuthorSettings.tex` additions

All added in the "User added packages" section:

#### pandoc compatibility fixes

| Fix | Reason |
|-----|--------|
| `\providecommand{\tightlist}{...}` | pandoc emits `\tightlist` for compact lists but only defines it in standalone documents |
| `\usepackage{calc}` | `\real{0.xxxx}` in pandoc table column widths |
| `\usepackage{booktabs}` | `\toprule`, `\midrule`, `\bottomrule` in pandoc tables |
| `\usepackage{array}` | `>{\raggedright\arraybackslash}` column specifiers |
| `\usepackage{multirow}` | `\multirow` in pandoc-generated tables |
| `\usepackage{amssymb}` | `\blacksquare` used in unicode mapping |
| `\robustify\phantomsection` | pandoc wraps table captions in `\href{url}{\phantomsection\label{...}text}`; `\phantomsection` calls `\Hy@raisedlink` which crashes inside `longtable` captions |
| `\renewcommand{\includesvg}[2][]{\fbox{...}}` | pandoc uses `\includesvg` for SVG images; the svg package requires inkscape which is not in the container |

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

188 placeholder image files (1×1 px JPEG/PNG, empty SVG) for the text-only first pass. Added to `.gitignore`.

---

## Known issues / next steps

- **Images**: placeholder boxes appear where figures should be. Replace `media/` with real extracted images from the DOCX (run `pandoc DMN_1.7_SOURCE.docx --extract-media=media -o output.md` to get them).
- **Page count**: 184 vs 270 pages — gap comes from missing images and denser text layout vs Word.
- **SCE hyperlinks**: ~1900 occurrences of `[text](https://www.omg.org/spec/SCE/1.0)` throughout the markdown. These are Word cross-reference artifacts that wrap entire paragraphs as external links. They render as blue hyperlinks in the PDF — consider stripping them.
- **Preamble chapters**: `initialsubmission = false` in `_Specification_Setup.tex` hides all `0_*` files (Acknowledgements, Introduction). Set to `true` to show them.
- **Terms and Symbols**: `4_Terms.md` and `5_Symbols.md` have no content from the DOCX conversion — they remain stubs.
- **Section heading markup**: `##` and `###` headings in the markdown retain pandoc anchor markup (`[]{#_Toc...}` etc.) which pandoc's LaTeX backend handles, but sub-heading text may look unusual if inspected.
