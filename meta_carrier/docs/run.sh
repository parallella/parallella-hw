#!/bin/bash

pandoc meta_reference.md -V geometry:margin=1in --template=template.tex --latex-engine=xelatex -o meta_reference.pdf 

