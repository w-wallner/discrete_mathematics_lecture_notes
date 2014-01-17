RUBBER_INSTALLED := $(shell command -v rubber 2>/dev/null)
LATEXMK_INSTALLED := $(shell command -v latexmk 2>/dev/null)

DATE_STRING=$(shell date +%Y%m%d)

MAIN_TEX = main
DOCUMENT = VO_Discrete_Mathematics_2013WS
all: $(MAIN_TEX).tex
ifdef RUBBER_INSTALLED
	rubber -d $<
else ifdef LATEXMK_INSTALLED
	latexmk -pdf $(MAIN_TEX).tex
else
	pdflatex $(MAIN_TEX).tex
	makeindex $(MAIN_TEX)
	pdflatex $(MAIN_TEX).tex
	pdflatex $(MAIN_TEX).tex
	@echo "=============================="
	@echo "= consider installing rubber ="
	@echo "=============================="
endif

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
	rm -f *.idx
	rm -f *.ilg
	rm -f *.ind
	rm -f *.fdb_latexmk
	rm -f *.fls

document: clean all
	cp $(MAIN_TEX).pdf ../$(DOCUMENT).pdf

daily_build: clean all
	cp $(MAIN_TEX).pdf ../VO_DM_$(DATE_STRING).pdf

.PHONY: all
.PHONY: clean
.PHONY: document
.PHONY: daily_build
