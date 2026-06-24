1. The markdown file produced from docx is broken (e.g. includes links to SCE everywhere).

Goal:
We have an **e2e pipeline** which takes a provided docx file, produces markdown files (chapters) out of it, and then outputs the PDF with the specification.

Steps:
1. Build:
    1. DOCX -> MD (single file) + SVG (images) // scripted with pandoc
    2. manual adjustments of the MD file // manual; optional if possible
    3. MD (single file) -> MD (chapters)   // scripted with pandoc or python or whatever
2. Test:
    1. MD (chapters) + SVG (images) -> PDF // scripted with Makefile; Makefile should not be edited because it is only a test of whether we did a good job
    2. Compare PDF with DMN_1.7.pdf
