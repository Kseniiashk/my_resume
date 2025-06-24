#!/bin/bash

if [ ! -d /usr/share/texmf/tex/latex/altacv ]; then
    mkdir -p /usr/share/texmf/tex/latex/altacv
    cp altacv.cls /usr/share/texmf/tex/latex/altacv/
    texhash
fi

pdflatex -interaction=nonstopmode resume.tex
pdflatex -interaction=nonstopmode resume.tex  
rm -f *.aux *.log *.out *.bcf *.run.xml
