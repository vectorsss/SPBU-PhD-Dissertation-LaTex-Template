#!/bin/sh
latexmk -interaction=nonstopmode \
        -output-directory=build \
        -pdf \
        -pdflatex\
        -bibtex \
        -shell-escape -f $1
mv build/*.pdf .
