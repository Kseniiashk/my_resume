#!/bin/bash

sed -i 's/\\geometry{l/\\geometry{/' resume.tex

fc-cache -fv

lualatex -interaction=nonstopmode resume.tex
