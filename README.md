# IB Mathematics Analysis and Approaches notes for May 2026 group.

## How.

You will need the following software:
- texlive
- gnumake

And then if run
```bash
make
```

Output is two PDFs:
```
higher_level.pdf
standard_level.pdf
```

## What.
There are four directories here:

- hl

- sl

- bib -- references for the bibliography.

- img -- images for the notes.

### HL/SL directory structure
Both HL/SL directories are concatenated together, and then pdflatex generates the final PDF.

- a_tex is the header of the PDF.
- b_tex is the footer of the PDF.
- Every other .tex file is a chapter of the notes. 

### Contributing

Make sure your LaTeX code contains only relevant information for HL or SL students, i.e. do not include HL content in SL notes.

Add your chapter file to both directories (if applicable) 
The file should be of the following format:
```tex
% Author(s): Your name
\section{(HL or SL) Section name}

Insert code here.
```

## LaTeX cheat sheet

```tex

% Is a comment
\section{Section name} % Section
\subsection{Subsection name} % Subsection

$a^2+b^2=c^2$ % is a math section.

\includegraphics{image.png} % Include an image

```

Below is a useful reference for math: https://jheffero.w3.uvm.edu/undergradmath/undergradmath_0.png
