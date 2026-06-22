###
# Build specification docs
#
### Basic use: 'make'
# A build/ directory will be created if not already present, and all necessary files for producing the specification PDF will be copied or generated into there.
#
### Debugging: `make debug`
# This will show the output of the LaTeX build to help debug
#
### Generating from a model
# If a file named <SPECACRO>.config is present in this dirctory, it will be used to drive md2LaTeX.py from the mdsa-tools
# repository, and generate LaTeX files from a MagicDraw model. (Other tool support pending.) Otherwise, this step
# is skipped.

### Author settable locations
# Default location for the temporary directory for building your PDF
build := build
# Where you GeneratedContent will be placed from your model if you're using that mechanism
gencondir := GeneratedContent

### Final PDF name
# By default, it is simply the ACRONYM_VERSION.pdf. If you choose to use something different, comment the following line and set a new value.
pdfnamebase = ${specacro}_${version}

###
# Nothing below here is user settable or usable
SHELL := /bin/bash
doc := Specification
all: spec
.PHONY: all
include ./mdsa-omg-core/_core.mk

# Explicit rule overrides the pattern rule in _core.mk so the local omgLaTeX.yaml
# (which strips options unsupported by the pandoc version in the build container) wins.
build/omgLaTeX.yaml: omgLaTeX.yaml
	cp $< $@

# Copy media/ images into the build directory, then rasterise SVGs to PNG so that
# the \includesvg redefinition in _Specification_AuthorSettings.tex can use \includegraphics.
spec: build/media
build/media: media | build
	cp -r $< build/
	for svg in build/media/*.svg; do \
		rsvg-convert -f png -o "$${svg%.svg}.png" "$$svg" 2>/dev/null || true; \
	done

# \pdffilesize{\userfiles{A_Annexes}} searches for the literal filename "./{A_Annexes}"
# (with brace characters in the name) because \userfiles expands to "./" and then the
# brace-group {A_Annexes} becomes literal "{A_Annexes}" in pdfTeX's filename scanner.
# Create that brace-named file so the \iffileemptyelse check sees a non-empty file.
# Use a surrogate stamp file as the Make target to avoid brace-in-name issues in Make.
spec: build/.brace_A_Annexes
build/.brace_A_Annexes: build/A_Annexes.tex
	cp $< 'build/{A_Annexes}'
	touch $@

# Override _core.mk's latexmk-based spec recipe with a manual multi-pass pdflatex build.
#
# Two fixups are applied between pandoc output and pdflatex compilation:
#
# (1) Heading-level shift for 7+_Technical_Content.tex and A_Annexes.tex:
#     pandoc is run with top-level-division:section (correct for 0_*, 1_*, 2_* files
#     that are included inside template-provided \chapter{} wrappers).  But the
#     technical-content and annex files supply their own top-level chapters and must use
#     \chapter{} at the top level.  Shift every heading command up one level in those
#     two files after pandoc conversion.
#
# (2) ## → \# in .toc between pdflatex passes:
#     pandoc converts markdown links in headings to \href{url}{text}.  When the URL
#     fragment contains a bare '#', pdflatex writes '##' into the .toc.  On the next
#     pass \pdfstringdef collapses '##' to catcode-6 '#', and '#' followed by a letter
#     triggers "Illegal parameter number in \Hy@tempa".  Sed-fix the .toc after each
#     pdflatex pass.
.PHONY: spec
spec:
	mv $(build)/$(doc).tex $(build)/$(pdfnamebase).tex 2>/dev/null || true
	@for f in $(build)/7+_Technical_Content.tex $(build)/A_Annexes.tex; do \
	  [ -f "$$f" ] && sed -i \
	    -e 's/\\subparagraph{/DMNTMP5/g' \
	    -e 's/\\paragraph{/DMNTMP4/g' \
	    -e 's/\\subsubsection{/DMNTMP3/g' \
	    -e 's/\\subsection{/DMNTMP2/g' \
	    -e 's/\\section{/\\chapter{/g' \
	    -e 's/DMNTMP2/\\section{/g' \
	    -e 's/DMNTMP3/\\subsection{/g' \
	    -e 's/DMNTMP4/\\subsubsection{/g' \
	    -e 's/DMNTMP5/\\paragraph{/g' \
	    "$$f" || true; \
	done
	cd $(build) && pdflatex -interaction=nonstopmode $(pdfnamebase).tex || true
	sed -i 's/##/\\#/g' $(build)/$(pdfnamebase).toc 2>/dev/null || true
	cd $(build) && biber $(pdfnamebase) 2>/dev/null || true
	cd $(build) && pdflatex -interaction=nonstopmode $(pdfnamebase).tex || true
	sed -i 's/##/\\#/g' $(build)/$(pdfnamebase).toc 2>/dev/null || true
	cd $(build) && pdflatex -interaction=nonstopmode $(pdfnamebase).tex
	cp $(build)/$(pdfnamebase).pdf ./$(pdfnamebase).pdf
