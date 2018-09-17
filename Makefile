.PHONY: cp

all: cv resume

cv: DongZHOU_CV.tex
	pdflatex DongZHOU_CV.tex
resume: DongZHOU_resume.tex
	pdflatex DongZHOU_resume.tex
cp:
	cp *pdf ~/Downloads/
