CHAPTERS=thesis.tex \
#Chapters/lhcDescription.tex \
Chapters/Theory/standardModel.tex \
Chapters/Theory/hiddenValley.tex \
Chapters/Lumi/LumiNonLinearity.tex \
Chapters/Lumi/lumi.tex \
Chapters/Lumi/VanDerMeer.tex \
Chapters/Lumi/LumiCalibration.tex \
Chapters/Lumi/lumiReadOut.tex \
Chapters/Lumi/lumiContinuousRunning.tex \
Chapters/CMS/cmsHCAL.tex \
Chapters/CMS/cmsTracker.tex \
Chapters/CMS/cmsMuon.tex \
Chapters/CMS/cmsDescription.tex \
Chapters/CMS/cmsMagnet.tex \
Chapters/CMS/cmsTrigger.tex \
Chapters/CMS/cmsECAL.tex \
Chapters/StandAloneMuonReconstruction.tex \
Chapters/HFAnomolousEvents.tex \
Chapters/Analysis/TagAndProbePackage.tex \
acknowledgements.tex \
abstract.tex \
introduction.tex \
AN-11-486/DataAndMCsamples.tex \
AN-11-486/CMSdetector.tex \
AN-11-486/AppendixBayesian.tex \
AN-11-486/AppendixLoose.tex \
AN-11-486/Acknowledgements.tex \
AN-11-486/AN-11-486.tex \
AN-11-486/AppendixTrackingEfficiencyFromCosmics.tex \
AN-11-486/RecoAndSelection.tex \
AN-11-486/AppendixSignalResolution.tex \
AN-11-486/pdefs.tex \
AN-11-486/Introduction.tex \
AN-11-486/Systematics.tex \
AN-11-486/Results.tex \
AN-11-486/EXO-11-101.tex \
AN-11-486/instructions.tex \
AN-11-486/Background.tex \
AN-11-486/AppendixBkgStat.tex \
Conclusion.tex 

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
