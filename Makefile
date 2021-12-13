sources = ${wildcard *.tex}
PDF = ${sources:.tex=.pdf}

all : ${PDF}

${PDF} : %.pdf : %.tex
	latexmk -pdf $<


