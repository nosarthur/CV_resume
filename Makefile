.PHONY: cp all

all: DongZHOU_CV.pdf DongZHOU_resume.pdf

DongZHOU_CV.pdf : base.tex DongZHOU_CV.tex
	pdflatex DongZHOU_CV.tex
DongZHOU_resume.pdf : base.tex DongZHOU_resume.tex
	pdflatex DongZHOU_resume.tex
cp:
	cp *pdf ~/Downloads/
