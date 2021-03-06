FILES = *.bbx *.dbx *.lbx documentation   makefile README


dist: all
	rm -rf biblatex-manuscripts-philology
	mkdir biblatex-manuscripts-philology
	cp README *bbx *dbx *lbx *makefile biblatex-manuscripts-philology
	mkdir biblatex-manuscripts-philology/documentation
	cp documentation/*tex documentation/*bib documentation/*pdf documentation/makefile  biblatex-manuscripts-philology/documentation
	$(RM) ../biblatex-manuscripts-philology.zip
	zip -r ../biblatex-manuscripts-philology.zip biblatex-manuscripts-philology


clean:
	$(MAKE) -C documentation clean
	@$(RM) *.pdf *.toc *.aux *.out *.fdb_latexmk *.log *.bbl *.bcf *.blg *run.xml *.synctex.gz*

all: documentation/example.tex documentation/biblatex-manuscripts-philology.tex documentation/example.bib
	$(MAKE) -C documentation all