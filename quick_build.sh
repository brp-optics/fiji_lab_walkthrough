#!/bin/bash

# Quick make script for the book. Bjorn 2025.04.30.

# Clear html files to fix cacheing issues:

uv run jupyter-book clean ./
uv run jupyter-book build ./

# Build html, then pdf. This always fails.

uv run jupyter-book build ./ --builder pdflatex

# Add latex to path
export PATH="$PATH:/c/Users/hyeonho/AppData/Local/Programs/MiKTeX/miktex/bin/x64"

# Run latex to build pdf
cd _build/latex
xelatex book.tex
xelatex book.tex
cd ../../

# Copy pdf to permanent location
cp _build/latex/book.pdf _static/

