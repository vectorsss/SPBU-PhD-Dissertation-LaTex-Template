#!/bin/sh
latexmk -interaction=nonstopmode \
        -output-directory=build \
        -pdf \
        -xelatex\
        -bibtex \
        -shell-escape -f $1
mv build/*.pdf .
