```{=latex}
\color{red}
```
*Technical content goes in the file 7+\_Technical_Content.tex. Create
your chapter, section, subsection, etc structures in this file and use
the `\subimport{}` command to read in additional files, particularly
those from the GeneratedContent folder, which can be reached via the
`\genfiles` macro.*

Example:

    \chapter{Core Packages}
    \section{Base}
    \subimport{\genfiles}{Base}
    \section{Syntax}
    \subimport{\genfiles}{Syntax}
    \section{Semantics}
    \subimport{\genfiles}{Semantics}
    \section{Units}
    \subimport{\genfiles}{Units}
    \section{SimpleUnits (informative)}\label{simpleunits}
    \subimport{\genfiles}{SimpleUnits}

```{=latex}
\color{black}
```
