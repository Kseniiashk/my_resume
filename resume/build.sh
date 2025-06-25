#!/bin/bash

rm -f altacv.cls

wget https://raw.githubusercontent.com/liantze/AltaCV/main/altacv.cls

mkdir -p /usr/share/texmf/tex/latex/altacv
cp altacv.cls /usr/share/texmf/tex/latex/altacv/
texhash

fc-cache -fv

lualatex -interaction=nonstopmode resume.tex
lualatex -interaction=nonstopmode resume.tex

if [ -f resume.pdf ]; then
    cp resume.pdf /app/output/
    echo "PDF успешно сгенерирован!"
else
    echo "ОШИБКА: PDF не сгенерирован"
    ls -la
    exit 1
fi
