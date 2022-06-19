sources = ${wildcard *.tex}
PDF = ${sources:.tex=.pdf}

MAIN.pdf : ${sources}

references.pdf : MAIN.pdf

all : ${PDF}

${PDF} : %.pdf : %.tex
	latexmk -pdf $<

clean :
	latexmk -silent -pdf -C ${sources}
	rm -f *.bbl *.run.xml

#	rm -f *.aux *.fls *.out *.fdb_latexmk *.log *.bbl *.blg *.pdf
