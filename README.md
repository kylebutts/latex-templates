## Latex Slides

This latex slide aims for nice typography, minimal aesthetics so the focus is on the content, and a set of helpful commands including easily colored words, full-size image frames, table highlighting, multi-column layouts, and more. The theme is highly customizable with (1) a well commented `preamble.tex` file so you can tweak it and make it your own and (2) by defining the colors in the top of your document:

```latex
% Define `accent`/`accent2` colors for theme customization
\definecolor{accent}{HTML}{006896}
\definecolor{accent2}{HTML}{E64173}

% Beamer theme
\input{preamble.tex}
```

[PDF Preview](https://raw.githack.com/kylebutts/templates/master/latex-slides/slides.pdf)


## Latex Article

[PDF Preview](https://raw.githack.com/kylebutts/templates/master/latex-article/article.pdf)

### .gitignore

This is a recommended set of files to include in `.gitignore` to not commit ugly latex auxiliary files:

```text
*.aux
*.lof
*.log
*.lot
*.fls
*.out
*.toc
*.fmt
*.fot
*.cb
*.cb2
.*.lb
*.bbl
*.bcf
*.blg
*.fdb_latexmk
*.run.xml
*.synctex.gz
*.nav
*.snm
```
