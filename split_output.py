#!/usr/bin/env python3
"""Split output.md into the chapter files Specification_Template.tex expects.

mdsa-omg-core/Specification_Template.tex `\\subimport`s a small, fixed set of
filenames (1_Scope, 2_Basic_Conformance, 4_Terms, 5_Symbols, 6_Additional,
7+_Technical_Content, A_Annexes). Everything else in the template lives behind
the `initialsubmission` flag, which is `false` in _Specification_Setup.tex, so
content routed anywhere else is silently dropped from the built PDF.
"""

import re
from pathlib import Path

ROOT = Path(__file__).parent
SOURCE = ROOT / "output.md"

# Chapter index (0-based, in output.md document order) -> (target filename
# stem, keep_heading). `keep_heading` re-emits the `# Title` line so pandoc
# turns it into its own chapter/section; omit it when the template already
# supplies the chapter title (e.g. `\chapter{Scope}`).
# None means: discard here (handled elsewhere by the LaTeX template).
CHAPTER_MAP = [
    ("1_Scope", False),              # 0: Scope
    ("2_Basic_Conformance", False),  # 1: Conformance
    None,                            # 2: References (auto-generated bibliography; see caveat)
    ("6_Additional", False),         # 3: Additional information
    ("7+_Technical_Content", True),  # 4: Introduction to DMN
    ("7+_Technical_Content", True),  # 5: Requirements (DRG and DRD)
    ("7+_Technical_Content", True),  # 6: Relating Decision Logic to Decision Requirements
    ("7+_Technical_Content", True),  # 7: Decision Table
    ("7+_Technical_Content", True),  # 8: Simple Expression Language (S-FEEL)
    ("7+_Technical_Content", True),  # 9: Expression Language (FEEL)
    ("7+_Technical_Content", True),  # 10: B-FEEL
    ("A_Annexes", True),             # 11: DMN Examples
    ("A_Annexes", True),             # 12: Exchange Formats
    ("A_Annexes", True),             # 13: DMN Diagram Interchange (DMN DI)
    ("A_Annexes", True),             # 14: ANNEXES
]

HEADING_RE = re.compile(r"^# (.+?)\s*$")


def split_chapters(lines):
    """Yield (heading_text, body_lines) for each top-level `# ` section.
    Content before the first heading (front matter) is discarded — the
    LaTeX template supplies title/copyright/preface pages itself."""
    heading = None
    body = []
    for line in lines:
        m = HEADING_RE.match(line)
        if m:
            if heading is not None:
                yield heading, body
            heading, body = m.group(1), []
        elif heading is not None:
            body.append(line)
    if heading is not None:
        yield heading, body


def main():
    lines = SOURCE.read_text(encoding="utf-8").splitlines(keepends=True)
    chapters = list(split_chapters(lines))

    if len(chapters) != len(CHAPTER_MAP):
        raise SystemExit(
            f"output.md has {len(chapters)} top-level (`# `) chapters, but "
            f"CHAPTER_MAP in this script has {len(CHAPTER_MAP)} entries.\n"
            f"Refusing to guess a mapping — update CHAPTER_MAP to match "
            f"output.md's current structure before splitting, otherwise "
            f"content will silently land in the wrong file (or be dropped)."
        )

    sections = {}  # filename stem -> list of rendered blocks, in doc order
    for (heading, body), entry in zip(chapters, CHAPTER_MAP):
        if entry is None:
            print(f"  SKIP    {heading!r} (not routed to any chapter file)")
            continue
        filename, keep_heading = entry
        block = (f"# {heading}\n\n" if keep_heading else "") + "".join(body).strip() + "\n"
        sections.setdefault(filename, []).append(block)
        print(f"  {filename + '.md':<24} <- {heading!r}")

    for filename, blocks in sections.items():
        path = ROOT / f"{filename}.md"
        path.write_text("\n".join(blocks), encoding="utf-8")
        print(f"wrote {path.name} ({len(blocks)} chapter(s), {path.stat().st_size} bytes)")


if __name__ == "__main__":
    main()
