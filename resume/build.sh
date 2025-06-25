#!/bin/bash

if [ ! -d /usr/share/texmf/tex/latex/altacv ]; then
    mkdir -p /usr/share/texmf/tex/latex/altacv
    cp altacv.cls /usr/share/texmf/tex/latex/altacv/
    texhash
fi

sed -i 's/\\setmainfont{Arial}/\\setmainfont{Liberation Sans}/' resume.tex

xelatex -interaction=nonstopmode resume.tex
xelatex -interaction=nonstopmode resume.tex  
rm -f *.aux *.log *.out *.bcf *.run.xml

cp resume.pdf /app/output/
