# Makefile for SZZ Master Kit
PROJECT = main
OUTPUT_DIR = build

all: $(PROJECT).pdf

$(PROJECT).pdf: $(PROJECT).tex
	mkdir -p $(OUTPUT_DIR)
	latexmk -xelatex -outdir=$(OUTPUT_DIR) -synctex=1 -interaction=nonstopmode -shell-escape $(PROJECT).tex
	cp $(OUTPUT_DIR)/$(PROJECT).pdf .

clean:
	rm -rf $(OUTPUT_DIR) *.pdf

.PHONY: all clean
