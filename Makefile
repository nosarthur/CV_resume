.PHONY: cp all

all: DongZHOU_CV.pdf DongZHOU_resume.pdf

%.pdf : %.tex base.tex
	pdflatex $<

cp:
	cp *pdf ~/Downloads/

