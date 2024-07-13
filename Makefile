# Makefile

# Define variables
THESIS_EN = thesis-en
THESIS_RU = thesis-ru
THESIS_BI = thesis
OUTPUT_DIR = build
PDF_EN = $(OUTPUT_DIR)/$(THESIS_EN)
PDF_RU = $(OUTPUT_DIR)/$(THESIS_RU)
PDF_BI = $(OUTPUT_DIR)/$(THESIS_BI)

FLAGs = \
	-interaction=nonstopmode \
	-output-directory=build \
	-pdf \
	-xelatex \
	-bibtex \
	-shell-escape

# Default target
all: build $(PDF_EN) $(PDF_RU)

build:
	@mkdir -p build

$(PDF_EN): $(THESIS_EN).tex
	-latexmk $(FLAGs) -f $<
	-cp $(PDF_EN).pdf $(THESIS_EN).pdf
$(PDF_RU): $(THESIS_RU).tex
	-latexmk $(FLAGs) -f $<
	-cp $(PDF_RU).pdf $(THESIS_RU).pdf

clean:
	rm -rf $(OUTPUT_DIR)
	rm -rf *.pdf
# Phony targets
.PHONY: clean all build