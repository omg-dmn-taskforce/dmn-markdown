# DMN 1.7 in markdown to PDF

There are `DMN_1.7_SOURCE.pdf` and `DMN_1.7_SOURCE.docx` files in the root. The docx is the source. The PDF is the expected output of the action.


## Goal

Use `build-pdf.sh` to produce the PDF out of the markdown files. The goal is that `output.pdf` produced by the script is very similar in the contents and structure to `DMN_1.7_SOURCE.pdf`.

## How to get there

Use `pandoc` to convert `DMN_1.7_SOURCE.docx` to markdown. Adjust the commands if needed. Then split the file into numbered `.md` files (cf. existing ones) so that each number is a chapter. Run `build-pdf.sh` to produce the PDF and compare.

---

## Clarified plan

### Inputs

- `output.md` — already the pandoc conversion of `DMN_1.7_SOURCE.docx` (untracked in git).
- Images: out of scope for this first pass (text-only).
- All existing numbered `.md` stubs will be fully replaced.
- Frontmatter (everything before the first `# ` heading in output.md) is discarded — the LaTeX template handles title/copyright pages.

### Chapter → file mapping

15 top-level `# ` headings were identified in output.md:

| Line | Raw heading | Target file |
|------|-------------|-------------|
| 690 | `# Scope` | `1_Scope.md` |
| 710 | `# Conformance` | `2_Conformance.md` |
| 836 | `# References` | `3_References.md` |
| 998 | `#` (empty) → first `##` = "Additional information … Acknowledgements" | `0_Additional_Information.md` |
| 1284 | `#` (empty) → first `##` = "Introduction to DMN … Context" | `0_Introduction.md` |
| 1891 | `#` (empty) → first `##` = "Requirements (DRG and DRD) … Introduction" | `7a_Requirements.md` |
| 3729 | `# [anchors]Relating Decision Logic to Decision Requirements](url)` | `7b_Decision_Logic.md` |
| 4661 | `# [anchors]Decision Table](url)` | `7c_Decision_Table.md` |
| 5659 | `# [anchors]Simple Expression Language (S-FEEL)](url)` | `7d_S-FEEL.md` |
| 5932 | `# [anchors]Expression Language (FEEL)](url)` | `7e_FEEL.md` |
| 11794 | `# B-FEEL` | `7f_B-FEEL.md` |
| 12150 | `# DMN Examples` | `Aa_DMN_Examples.md` |
| 13417 | `# Exchange Formats` | `Ab_Exchange_Formats.md` |
| 13574 | `# [anchors]DMN Diagram Interchange (DMN DI)](url)` | `Ac_DMN_DI.md` |
| 14332 | `#` (empty) → content = "ANNEXES All the Annexes are informative" | `Ad_Annexes.md` |

Sorting: `0_*` < `1_*` < `2_*` < `3_*` < `7a_*` … `7f_*` < `Aa_*` … — all sort correctly (digits precede uppercase letters in ASCII).

Stubs `4_Terms.md` and `5_Symbols.md` have no corresponding `# ` heading in output.md and will remain empty.

### Heading cleanup algorithm

Many headings contain pandoc anchor markup like `[[[]{#_Toc...}...]Title](url)`. Clean algorithmically:

1. **Iteratively** remove `[]{...}` empty anchor spans (`re.sub(r'\[\]\{[^}]*\}', '', text)` in a loop until stable).
2. Remove remaining `]{...}` span-attribute closings.
3. **Iteratively** unwrap `[text](url)` links → `text`.
4. Strip leftover `[` and `]` brackets, then `.strip()`.

For **empty headings** (`#` with no text), use the first `## ` sub-heading text (cleaned by the same algorithm) as the reconstructed title.

### Implementation

Write `split_output.py` in the project root:

1. Read `output.md`.
2. Split into sections at every `# ` boundary; discard everything before the first `# `.
3. Apply the heading cleanup algorithm to each title; for empty headings, look ahead to first `## `.
4. Use a hardcoded `CHAPTER_MAP` (index → file prefix) matching the table above.
5. Derive a slug from the cleaned title (lowercase, spaces→underscores, strip non-alphanum).
6. Write `{prefix}_{slug}.md` in the project root.
7. Delete old stubs: all `0_*.md`, `1_*.md`, `2_*.md`, `3_*.md`, `6_*.md`, `7+_Technical_Content.md`, `A_Annexes.md`.
8. Write `MANUAL_ADJUSTMENTS.md` documenting: reconstructed titles and source line ranges, how empty headings were resolved, and known body-text issues (e.g. `[text](https://www.omg.org/spec/SCE/1.0)` cross-reference links throughout).

### Verification

1. Run `./split_output.py` → check files created, review `MANUAL_ADJUSTMENTS.md`.
2. Run `./build-pdf.sh` → confirm `output.pdf` produced without errors.
3. Open `output.pdf` and `DMN_1.7_SOURCE.pdf` side by side; verify chapter structure and headings match.
