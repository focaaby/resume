MAIN=resume
TEX=xelatex
BIBTEX=bibtex
RM=rm -f

.SUFFIXES: .tex

all: $(MAIN).pdf

$(MAIN).pdf: *.tex
	$(TEX) -no-pdf $(MAIN)
	# $(BIBTEX) $(MAIN)
	# $(TEX) -no-pdf $(MAIN)
	$(TEX) $(MAIN)

clean:
	$(RM) *aux *.bbl *.blg *.loa *.lof *.log *.lot *.toc *.xdv *.fdb_latexmk *.out $(MAIN).pdf
