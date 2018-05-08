all: cv resume

cv:
	pdflatex DongZHOU_CV.tex
resume:
	pdflatex DongZHOU_resume.tex
cp:
	cp *pdf ~/storage/downloads/
