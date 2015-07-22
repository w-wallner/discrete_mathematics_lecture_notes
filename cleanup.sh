#!/bin/sh


TMP_FILES_MASK='*.aux *.log *.nav *.out *.snm *.toc *.bbl *.blg *.lof *.idx *.ilg *.ind *.fdb_latexmk *.fls'


for i in ${TMP_FILES_MASK}
do
    echo $i
    find . -name "$i" -type f -not -path ".git"
done