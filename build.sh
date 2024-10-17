#!/bin/bash

WORK_DIR="/app"
RESULT_DIR="/result"

build_project() {
    cd $WORK_DIR
    pdflatex thesis.tex && biber thesis && pdflatex thesis.tex
    rm -rf $RESULT_DIR/*
    mv thesis.pdf $RESULT_DIR/
    rm -rf $WORK_DIR/*

}

main() {
    check_env
    build_project
}

main