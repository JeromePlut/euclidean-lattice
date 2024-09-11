all: lattice.pdf

%.pdf: %.dtx %.sty
	pdflatex $<

%.sty: %.ins
	pdflatex $<
