PACKAGE=lattice
package: $(PACKAGE).zip

$(PACKAGE).zip: lattice-doc.pdf lattice.ins lattice.dtx README.md
	mkdir $(PACKAGE)
	cp -a $^ $(PACKAGE)
	zip $@ $(PACKAGE)/*
	rm -rf $(PACKAGE)

doc: lattice-doc.pdf


%-doc.pdf: %.dtx %.sty
	pdflatex $<
	mv $*.pdf $*-doc.pdf

%.sty: %.ins
	pdflatex $<
