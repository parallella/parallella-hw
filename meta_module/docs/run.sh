#!/bin/bash

pandoc meta_module_ref.md -V geometry:margin=1in --template=template.tex --latex-engine=xelatex -o meta_module_ref.pdf 

