# Latex templates

This is a repository of all my latex templates. I've done my best to document every line of code for these themes so that you can understand what it does and delete/modify things as you see fit. You can see a live preview of each one here:

[Slides](https://raw.githack.com/kylebutts/latex-templates/main/latex-slides/slides.pdf) | 
[Article](https://raw.githack.com/kylebutts/latex-templates/main/latex-article/article.pdf) | 
[Referee Report](https://raw.githack.com/kylebutts/latex-templates/main/referee-response/responses.pdf)


## Latex Slides 

This latex slide aims for nice typography, minimal aesthetics so the focus is on the content, and a set of helpful commands including easily colored words, full-size image frames, table highlighting, multi-column layouts, and more. The theme is highly customizable with (1) a well commented `slides.sty` file so you can tweak it and make it your own and (2) by defining the colors in the top of your document:

```latex
% Define `accent`/`accent2` colors for theme customization
\definecolor{accent}{HTML}{006896}
\definecolor{accent2}{HTML}{E64173}
\usepackage{slides}
```

Here are some highlights

<a href="https://raw.githack.com/kylebutts/latex-templates/main/latex-slides/slides.pdf">
  <img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/title.png" alt="Title slides" />
</a>
<a href="https://raw.githack.com/kylebutts/latex-templates/main/latex-slides/slides.pdf">
  <img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/text.png" alt="Example slide of text with button" />
</a>
<a href="https://raw.githack.com/kylebutts/latex-templates/main/latex-slides/slides.pdf">
  <img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/figure-1.png" alt="Example of including full size figure" />
</a>
<a href="https://raw.githack.com/kylebutts/latex-templates/main/latex-slides/slides.pdf">
  <img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/figure-2.png" alt="Full size image example" />
</a>
<a href="https://raw.githack.com/kylebutts/latex-templates/main/latex-slides/slides.pdf">
  <img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/table.png" alt="Table with colored rows" />
</a>
<a href="https://raw.githack.com/kylebutts/latex-templates/main/latex-slides/slides.pdf">
  <img style="width: 48%;" src="https://raw.githubusercontent.com/kylebutts/latex-templates/main/img/latex-slides/references.png" alt="Bibliography slides" />
</a>


## Latex Article

This is how I write my papers.

### Math commands

I have a set of math commands in `math.sty` that borrow heavily from [Pascal Michaillat](https://github.com/pmichaillat/latex-math). See the document for examples of what I've included.

### Easily-hideable comments in paper

This also includes a very useful way to leave notes in a document. Then, you can comment `\kyle{Thoughts here}` to leave a comment. Toggling `\booltrue` to `\boolfalse` will hide the comments from the document.

```tex
% Conditionally display thoughts (hide by switching to `\boolfalse`)
\booltrue{INCLUDECOMMENTS}
\newcommand{\kyle}[1]{\coauthorComment[Kyle]{#1}}
```



## Response to Referees

The goal of this is to make referee reports look nice and make it easy to structure the document. For each referee, use this to create a section with the referee:

```tex
\NewRef{Referee 1}{R1}
```

Then for each comment, wrap the referee's comment with a `refcomment` environment and it will create a subsection and automatically number the comments
```tex
\begin{refcomment}

\end{refcomment}
```


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
