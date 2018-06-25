MAIN=resume-ch
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
	$(RM) *aux *.bbl *.blg *.loa *.lof *.log *.lot *.toc *.xdv *.fdb_latexmk

clean-pdf:
	$(RM) $(MAIN).pdf

clean-all: clean clean-pdf
