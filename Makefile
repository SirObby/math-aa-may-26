all: clean higher_level.pdf standard_level.pdf

higher_level.pdf: higher_level.tex
	pdflatex higher_level.tex

higher_level.tex:
	cat hl/a_tex hl/*.tex hl/b_tex > higher_level.tex

standard_level.tex:
	cat sl/a_tex sl/*.tex sl/b_tex > standard_level.tex

standard_level.pdf: standard_level.tex
	pdflatex standard_level.tex

clean:
	rm -f higher_level.* standard_level.*