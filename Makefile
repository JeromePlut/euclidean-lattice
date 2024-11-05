PACKAGE=euclidean-lattice
package: $(PACKAGE).zip

%.zip: %-doc.pdf %.ins %.dtx README.md
	mkdir $*
	cp -a $^ $*
	zip $@ $*/*
	rm -rf $*

doc: $(PACKAGE)-doc.pdf


%-doc.pdf: %.dtx %.sty
	pdflatex $<
	mv $*.pdf $*-doc.pdf

%.sty: %.ins
	pdflatex $<
