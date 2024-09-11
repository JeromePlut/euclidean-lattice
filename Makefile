PACKAGE=lattice
package: $(PACKAGE).zip

$(PACKAGE).zip: lattice.pdf lattice.ins lattice.dtx README.md
	mkdir $(PACKAGE)
	cp -a $^ $(PACKAGE)
	zip $@ $(PACKAGE)/*
	rm -rf $(PACKAGE)

all: lattice.pdf


%.pdf: %.dtx %.sty
	pdflatex $<

%.sty: %.ins
	pdflatex $<
