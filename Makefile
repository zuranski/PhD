CHAPTERS=thesis.tex \
abstract.tex \
chapters/Introduction.tex \
chapters/CMSdetector.tex \
chapters/DataAndMCsamples.tex \
chapters/RecoAndSelection.tex \
chapters/Background.tex \
chapters/Systematics.tex \
chapters/Results.tex \
#Conclusion.tex 

all: clean Andrzej_Zuranski-Thesis.pdf

thesis.aux: thesis.tex $(CHAPTERS)
	pdflatex -file-line-error -halt-on-error thesis

thesis.bbl: thesis.aux thesis.bib
	bibtex thesis

Andrzej_Zuranski-Thesis.pdf: thesis.aux thesis.bbl
	pdflatex -file-line-error -halt-on-error thesis
	pdflatex -file-line-error -halt-on-error thesis
	mv thesis.pdf Andrzej_Zuranski-Thesis.pdf

clean:
	$(RM) Andrzej_Zuranski-Thesis.pdf *.ps *.dvi *.log *.toc *.aux *.lot *.lof *.bbl *.blg *.out

distclean: clean
	$(RM) *~
