@echo off
set paper=Correlation_Guide

git describe --long --dirty > gitinfo.txt
set /p gitrevision=<gitinfo.txt
echo \newcommand^{\gitrevision^}^{%gitrevision%^} > gitrevision.tex

echo pass 1
pdflatex -interaction nonstopmode %paper% > %paper%.err
bibtex %paper% > %paper%.err
echo pass 2
pdflatex -interaction nonstopmode %paper% > %paper%.err
echo pass 3
pdflatex -interaction nonstopmode %paper% > %paper%.err

find "! LaTeX Error:" %paper%.err
find "Fatal error" %paper%.err
find "Error:" %paper%.err

echo %paper% build complete
pause

