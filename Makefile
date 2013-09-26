CHAPTERS=thesis.tex \
abstract.tex \
chapters/Introduction.tex \
chapters/CMSdetector.tex \
chapters/RecoAndSelection.tex \
chapters/Background.tex \
chapters/Systematics.tex \
chapters/Results.tex \
#Conclusion.tex 

all: clean AndrzejZuranski_Thesis.pdf

thesis.aux: thesis.tex $(CHAPTERS)
	pdflatex -file-line-error -halt-on-error thesis

thesis.bbl: thesis.aux thesis.bib
	bibtex thesis

AndrzejZuranski_Thesis.pdf: thesis.aux thesis.bbl
	pdflatex -file-line-error -halt-on-error thesis
	pdflatex -file-line-error -halt-on-error thesis
	mv thesis.pdf AndrzejZuranski_Thesis.pdf

clean:
	$(RM) AndrzejZuranski_Thesis.pdf *.ps *.dvi *.log *.toc *.aux *.lot *.lof *.bbl *.blg *.out

distclean: clean
	$(RM) *~
