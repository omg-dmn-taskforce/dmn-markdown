# 2025-08-27 ABPSC
* Unicode characters in DMN not supported by `pdflatex` => `pandoc --pdf-engine=xelatex` could work

# 2025-08-26
* Markdown build fails even without any contents from DMN 1.6
* Conversion from Word to Markdown & Latex seems to work
    * TOC was working with links
    * Table captions are just bold text with hardcoded numbers
    * Latex build seems to fail on image
    * Tables in Latex look horrible, i.e. unmaintainable in code

## Questions to OMG
* How to get Markdown to build
* How to do table captions in Markown and links and figures ...
    * Links: https://pandoc.org/MANUAL.html#extension-implicit_header_references
    * Table captions: https://pandoc.org/MANUAL.html#extension-table_captions
    * Citations: https://pandoc.org/MANUAL.html#citation-syntax, e.g. [@UML251]

## Troubleshooting
* Ctrl+D exits Latex if its stuck

```sh
pandoc -o DMN1.6.tex --extract-media=Images DMN\ 1.6\ Beta\ 1\ \[dtc-24-05-18\].docx
pandoc -o DMN1.6.md --extract-media=. DMN\ 1.6\ Beta\ 1\ \[dtc-24-05-18\].docx --wrap=none
sudo apt install librsvg2-bin # SVG content in PDF output
sudo apt install texlive-xetex # PDF output via XeLaTeX
pandoc -o DMN-from-Markdown.pdf --pdf-engine=xelatex DMN1.6.md
```

# Notes about Debian packaging of Pandoc

## Packages needed for optional features

Some uses of Pandoc require additional packages:

  * SVG content in PDF output requires librsvg2-bin.
  * YAML metadata in TeX-related output requires texlive-latex-extra.
  * *.hs filters not set executable requires ghc.
  * *.js filters not set executable requires nodejs.
  * *.php filters not set executable requires php.
  * *.pl filters not set executable requires perl.
  * *.py filters not set executable requires python.
  * *.rb filters not set executable requires ruby.
  * *.r filters not set executable requires r-base-core.
  * LaTeX output, and PDF output via PDFLaTeX,
    require texlive-latex-recommended.
  * XeLaTeX output, and PDF output via XeLaTeX, require texlive-xetex.
  * LuaTeX output, and PDF output via LuaTeX, require texlive-luatex.
  * ConTeXt output, and PDF output via ConTeXt, require context.
  * PDF output via wkhtmltopdf requires wkhtmltopdf.
  * Roff man and roff ms output, and PDF output via roff ms,
    require groff.
  * MathJax-rendered equations require libjs-mathjax.
  * KaTeX-rendered equations require node-katex.
  * option --csl may use styles in citation-style-language-styles.