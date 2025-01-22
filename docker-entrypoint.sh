# /**
#  * @author sonnh
#  * @email sonnh.tech@gmail.com
#  * @create date 2025-01-22 07:32:53
#  * updated:  date 2025-01-22 07:32:53
#  * @desc [description]
#  */

#!/bin/sh

if [ $1 -eq 1 ]; then
    pdflatex -interaction=batchmode main.tex && makeglossaries main && biber main && pdflatex -interaction=batchmode main.tex
else
    pdflatex -interaction=batchmode main.tex && biber main && pdflatex -interaction=batchmode main.tex
fi