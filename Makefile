.PHONY: cp all

all: DongZHOU_CV.pdf DongZHOU_resume.pdf

%.pdf : %.tex base.tex
	pdflatex $<

keywords/wordcloud.png: keywords/paper-titles.txt
	pip3 install keywords/requirements.txt
	cd keywords && python3 makeWordCloud.py


cp:
	cp *pdf ~/Downloads/

