all: clean higher_level.pdf standard_level.pdf
HL_FILES=hl/calculus.tex
SL_FILES=sl/calculus.tex
CONTR=$(shell cat CONTRIBUTORS)

higher_level.pdf: higher_level.tex
	pdflatex higher_level.tex

higher_level.tex:
	cat hl/a_tex $(HL_FILES) hl/b_tex > higher_level.tex
	sed "s/INSERTAUTHORSLIST/$(CONTR)/g" higher_level.tex | tee higher_level.tex

standard_level.tex:
	cat sl/a_tex $(SL_FILES) sl/b_tex > standard_level.tex
	sed "s/INSERTAUTHORSLIST/$(CONTR)/g" standard_level.tex | tee standard_level.tex

standard_level.pdf: standard_level.tex
	pdflatex standard_level.tex

clean:
	rm -f higher_level.* standard_level.*