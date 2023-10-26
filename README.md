# Latex templates

This is a repository of all my latex templates. I've done my best to document every line of code for these themes so that you can understand what it does and delete/modify things as you see fit. You can see a live preview of each one here:

[Slides](https://raw.githack.com/kylebutts/latex-templates/master/latex-slides/slides.pdf) | 
[Article](https://raw.githack.com/kylebutts/latex-templates/master/latex-article/article.pdf) | 
[Referee Report](https://raw.githack.com/kylebutts/latex-templates/master/referee-response/responses.pdf)


## Latex Slides 

This latex slide aims for nice typography, minimal aesthetics so the focus is on the content, and a set of helpful commands including easily colored words, full-size image frames, table highlighting, multi-column layouts, and more. The theme is highly customizable with (1) a well commented `preamble.tex` file so you can tweak it and make it your own and (2) by defining the colors in the top of your document:

```latex
% Define `accent`/`accent2` colors for theme customization
\definecolor{accent}{HTML}{006896}
\definecolor{accent2}{HTML}{E64173}

% Beamer theme
\input{preamble.tex}
```

<img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/title.png" alt="Title slides" />
<img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/text.png" alt="Example slide of text with button" />
<img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/figure-1.png" alt="Example of including full size figure" />
<img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/figure-2.png" alt="Full size image example" />
<img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/table.png" alt="Table with colored rows" />
<img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/references.png" alt="Bibliography slides" />


## Latex Article

[PDF Preview](https://raw.githack.com/kylebutts/templates/master/latex-article/article.pdf)

## Response to Referees

[PDF Preview](https://raw.githack.com/kylebutts/templates/master/referee-response/responses.pdf)


## .gitignore

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
