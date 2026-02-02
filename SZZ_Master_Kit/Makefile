# ============================================
# CVUT SZZ Survival Kit Build System
# Architecture: Auto-Versioning & Professional Naming
# ============================================

# Configuration
SOURCE_FILE := szz_guide.tex
BASE_NAME   := CVUT_SZZ_Survival_Kit
VERSION_FILE := .version
COMPILER    := lualatex
BUILD_DIR   := build

# Ensure version file exists
$(shell [ -f $(VERSION_FILE) ] || echo 1.0 > $(VERSION_FILE))

.PHONY: all clean help rebuild

# Default Target
all:
	@echo "Building SZZ Survival Kit..."
	@$(MAKE) build_pdf

# Force rebuild (clean + build)
rebuild: clean all

# Build Logic
build_pdf:
	@mkdir -p $(BUILD_DIR)
	@cur=$$(cat $(VERSION_FILE)); \
	new_ver=$$(echo $$cur | awk -F. '{if($$2>=9) print $$1+1".0"; else print $$1"."$$2+1}'); \
	echo "[1/3] Compiling $(SOURCE_FILE)..."; \
	if latexmk -$(COMPILER) -synctex=1 -interaction=nonstopmode -file-line-error -output-directory=$(BUILD_DIR) $(SOURCE_FILE); then \
		echo "[2/3] Updating Version: $$cur -> $$new_ver"; \
		echo $$new_ver > $(VERSION_FILE); \
		out_file="$(BASE_NAME)_v$$new_ver.pdf"; \
		cp $(BUILD_DIR)/szz_guide.pdf ./$$out_file; \
		echo "[3/3] SUCCESS: ./$$out_file (v$$new_ver)"; \
	else \
		echo "FAILED: Compilation error. Check $(BUILD_DIR)/szz_guide.log"; \
		echo "Version unchanged at $$cur"; \
		exit 1; \
	fi

clean:
	@echo "Cleaning build artifacts..."
	rm -rf $(BUILD_DIR)
	rm -f $(BASE_NAME)*.pdf
	rm -f main_v*.pdf main.pdf szz_guide.pdf

help:
	@echo "Usage:"
	@echo "  make         - Build new version (auto-increment)"
	@echo "  make rebuild - Clean and rebuild"
	@echo "  make clean   - Remove all generated files"
	@echo ""
	@echo "Current version: $$(cat $(VERSION_FILE))"
