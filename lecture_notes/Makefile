
MAIN_TEX = main
DOCUMENT = VO_Discrete_Mathematics_2013WS
all: $(MAIN_TEX).tex
	pdflatex $(MAIN_TEX).tex
	pdflatex $(MAIN_TEX).tex
	pdflatex $(MAIN_TEX).tex

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.pdf
	rm -f *.nav
	rm -f *.out
	rm -f *.snm
	rm -f *.toc
	rm -f *.bbl
	rm -f *.blg
	rm -f *.lof

document: clean all
	cp $(MAIN_TEX).pdf ../$(DOCUMENT).pdf

.PHONY: all
.PHONY: clean
.PHONY: document
