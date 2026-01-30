# ============================================
# CVUT SZZ Survival Kit Build System
# Architecture: Auto-Versioning & Professional Naming
# ============================================

# Configuration
SOURCE_FILE := szz_guide.tex
BASE_NAME   := CVUT_SZZ_Survival_Kit
VERSION_FILE := .version
COMPILER    := lualatex

# Ensure version file exists
$(shell [ -f $(VERSION_FILE) ] || echo 1.0 > $(VERSION_FILE))

.PHONY: all clean help

# Default Target
all:
	@echo "🚀 Initiating Build Sequence..."
	@$(MAKE) build_pdf

# Build Logic (Hidden Target) - NO COMMENTS inside the command block to ensure safety
build_pdf:
	@cur=$$(cat $(VERSION_FILE)); \
	new_ver=$$(echo $$cur | awk -F. '{if($$2>=9) print $$1+1".0"; else print $$1"."$$2+1}'); \
	echo "🔄 Updating Version: $$cur -> $$new_ver"; \
	echo $$new_ver > $(VERSION_FILE); \
	echo "🔨 Compiling $(SOURCE_FILE)..."; \
	latexmk -$(COMPILER) -synctex=1 -interaction=nonstopmode -file-line-error -outdir=build $(SOURCE_FILE) > /dev/null 2>&1 || { echo "❌ Compilation Failed! Check log."; exit 1; }; \
	out_file="$(BASE_NAME)_v$$new_ver.pdf"; \
	cp build/szz_guide.pdf ./$$out_file; \
	echo "✅ SUCCESS: Output generated at ./$$out_file"

clean:
	@echo "🧹 Cleaning artifacts..."
	rm -rf build
	rm -f $(BASE_NAME)*.pdf
	rm -f main_v*.pdf
	rm -f main.pdf
	rm -f szz_guide.pdf

help:
	@echo "Run 'make' to build a new version."
	@echo "Run 'make clean' to remove all PDFs."
