#!/bin/bash

WORK_DIR="/app"
RESULT_DIR="$WORK_DIR/result"

check_env() {
    echo "$FACULTY"
}

build_project() {
    cd $WORK_DIR
    pdflatex thesis.tex && biber thesis && pdflatex thesis.tex
    mv thesis.pdf $RESULT_DIR/

}

main() {
    check_env
    build_project
}

main