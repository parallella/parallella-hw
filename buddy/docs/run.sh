#!/bin/bash

pandoc buddy_reference.md -V geometry:margin=1in --template=template.tex --latex-engine=xelatex -o buddy_reference.pdf 

