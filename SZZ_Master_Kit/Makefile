# ============================================
# SZZ Survival Kit Makefile
# Auto-versioning: main_vX.Y.pdf
# ============================================

VERSION_FILE := .version
LATEX_COMPILER := lualatex

# Initialize version file if missing
$(shell [ -f $(VERSION_FILE) ] || echo 1.0 > $(VERSION_FILE))

.PHONY: all clean

all:
	@echo "--- SZZ Build System ---"
	@# Read current version
	@cur=$$(cat $(VERSION_FILE)); \
	\
	# Increment Version Logic (1.9 -> 2.0, else 1.x -> 1.x+1) \
	new_ver=$$(echo $$cur | awk -F. '{if($$2>=9) print $$1+1".0"; else print $$1"."$$2+1}'); \
	echo "Current: $$cur -> New: $$new_ver"; \
	echo $$new_ver > $(VERSION_FILE); \
	\
	# Compile Main Document \
	echo "Compiling main.tex with $(LATEX_COMPILER)..."; \
	latexmk -$(LATEX_COMPILER) -synctex=1 -interaction=nonstopmode -file-line-error -outdir=build main.tex || exit 1; \
	\
	# Rename Output \
	cp build/main.pdf ./main_v$$new_ver.pdf; \
	echo "✅ Build Success! Output: main_v$$new_ver.pdf"

clean:
	@echo "Cleaning build artifacts..."
	rm -rf build
	rm -f main_v*.pdf
	rm -f *.synctex.gz
