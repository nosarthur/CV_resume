.PHONY: cp

all: cv resume

cv: base.tex DongZHOU_CV.tex
	pdflatex DongZHOU_CV.tex
resume: base.tex DongZHOU_resume.tex
	pdflatex DongZHOU_resume.tex
cp:
	cp *pdf ~/Downloads/
