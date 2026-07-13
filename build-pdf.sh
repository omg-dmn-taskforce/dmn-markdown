#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="omg-mdsa-build:latest"

if ! docker image inspect "$IMAGE_NAME" &>/dev/null; then
  echo "Image '$IMAGE_NAME' not found, building..."
  docker build -t "$IMAGE_NAME" .
else
  echo "Image '$IMAGE_NAME' found, skipping build."
fi

# Pre-seed build/omgLaTeX.yaml from the local override (which drops the
# table-caption-position / figure-caption-position keys the container's
# pandoc doesn't support) so _core.mk's core-vs-local copy rule never
# clobbers it with mdsa-omg-core/omgLaTeX.yaml.
mkdir -p build
cp omgLaTeX.yaml build/omgLaTeX.yaml

docker run --rm \
  -v "$(pwd):/app" \
  "$IMAGE_NAME" \
  sh -c '
    set -e

    # SHELL=/bin/bash: _core.mk per-file conversion rule uses `(( size > 0 ))`
    # arithmetic, which /bin/sh (dash on this image) cannot parse — it silently
    # no-ops (falls through to `touch`) instead of running pandoc.
    make SHELL=/bin/bash md

    # _core.mk only copies ./Images/*.svg into build/; it has no rule for the
    # ./media/ directory pandoc --extract-media populates. Copy it in and
    # rasterize SVGs to PNG, since pdflatex is not run with -shell-escape (so
    # the svg package cannot invoke inkscape from inside the LaTeX run itself).
    rm -rf build/media
    cp -r media build/media
    for svg in build/media/*.svg; do
      [ -f "$svg" ] || continue
      inkscape "$svg" --export-type=png --export-filename="${svg%.svg}.png"
    done

    # Specification_Template.tex checks \iffileemptyelse{\userfiles{A_Annexes}}
    # with a literal brace-wrapped argument, which \userfiles expands to a
    # filename containing literal brace characters. Create that exact filename
    # so the appendix is not treated as empty.
    cp build/A_Annexes.tex "build/{A_Annexes}"

    # 1_Scope.tex, 2_Basic_Conformance.tex etc. sit inside a template-provided
    # \chapter{...}, so pandoc emitting \section for their `# ` heading (per
    # top-level-division: section in omgLaTeX.yaml) is correct. But
    # 7+_Technical_Content.tex and A_Annexes.tex supply their own top-level
    # chapters (Introduction to DMN, Requirements, Decision Table, DMN
    # Examples, ...) with no template \chapter{} wrapper, so shift every
    # heading command in those two files up one level.
    for f in "build/7+_Technical_Content.tex" "build/A_Annexes.tex"; do
      [ -f "$f" ] || continue
      sed -i \
        -e "s/\\\\subparagraph{/@@SUBPARA@@/g" \
        -e "s/\\\\paragraph{/@@PARA@@/g" \
        -e "s/\\\\subsubsection{/@@SUBSUBSEC@@/g" \
        -e "s/\\\\subsection{/@@SUBSEC@@/g" \
        -e "s/\\\\section{/\\\\chapter{/g" \
        -e "s/@@SUBSEC@@/\\\\section{/g" \
        -e "s/@@SUBSUBSEC@@/\\\\subsection{/g" \
        -e "s/@@PARA@@/\\\\subsubsection{/g" \
        -e "s/@@SUBPARA@@/\\\\paragraph{/g" \
        "$f"
    done

    make SHELL=/bin/bash spec
    cp /app/DMN_1.7.pdf /app/output.pdf
  '

echo "Done: output.pdf"
