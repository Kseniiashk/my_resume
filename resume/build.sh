#!/bin/bash

set -e
pdflatex -interaction=nonstopmode resume.tex
pdflatex -interaction=nonstopmode resume.tex
echo "resume.pdf готово"