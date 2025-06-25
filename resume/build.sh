#!/bin/bash

# Установка локальных пакетов LaTeX
if [ ! -d /usr/share/texmf/tex/latex/altacv ]; then
    mkdir -p /usr/share/texmf/tex/latex/altacv
    cp altacv.cls /usr/share/texmf/tex/latex/altacv/
    texhash
fi

echo "### Доступные шрифты ###"
fc-list
echo "########################"

sed -i 's/\\setmainfont{.*}/\\setmainfont{DejaVu Sans}/' resume.tex
sed -i 's/\\geometry{l/\\geometry{/' resume.tex  
lualatex -interaction=nonstopmode resume.tex
lualatex -interaction=nonstopmode resume.tex 
rm -f *.aux *.log *.out *.bcf *.run.xml

if [ -f resume.pdf ]; then
    cp resume.pdf /app/output/
    echo "PDF успешно сгенерирован!"
else
    echo "ОШИБКА: PDF не сгенерирован"
    ls -la
    exit 1
fi
