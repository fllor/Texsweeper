LATEX=pdflatex
FLAGS=-output-directory=build -halt-on-error

.PHONY: all
all: Texsweeper20.pdf Texsweeper8.pdf

Texsweeper8.pdf: Texsweeper8.tex base.tex
	mkdir -p build
	$(LATEX) $(FLAGS) $<
	$(LATEX) $(FLAGS) $<
	mv build/$@ .

Texsweeper20.pdf: Texsweeper20.tex base.tex
	mkdir -p build
	$(LATEX) $(FLAGS) $<
	$(LATEX) $(FLAGS) $<
	mv build/$@ .

.PHONY: clean
clean:
	rm -rf build Texsweeper8.pdf Texsweeper20.pdf
