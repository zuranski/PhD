CHAPTERS=thesis.tex \
#abstract.tex \
#introduction.tex 
#AN-11-486/DataAndMCsamples.tex \
#AN-11-486/CMSdetector.tex \
#AN-11-486/Systematics.tex \
#AN-11-486/Results.tex \
#AN-11-486/EXO-11-101.tex \
#AN-11-486/instructions.tex \
#AN-11-486/Background.tex \
#AN-11-486/AppendixBkgStat.tex \
#Conclusion.tex 

all: clean Adam_Hunt-Thesis.pdf

thesis.aux: thesis.tex $(CHAPTERS)
	pdflatex -file-line-error -halt-on-error thesis

thesis.bbl: thesis.aux thesis.bib
	bibtex thesis

Adam_Hunt-Thesis.pdf: thesis.aux thesis.bbl
	pdflatex -file-line-error -halt-on-error thesis
	pdflatex -file-line-error -halt-on-error thesis
	mv thesis.pdf Adam_Hunt-Thesis.pdf

clean:
	$(RM) Adam_Hunt-Thesis.pdf *.ps *.dvi *.log *.toc *.aux *.lot *.lof *.bbl *.blg

distclean: clean
	$(RM) *~
