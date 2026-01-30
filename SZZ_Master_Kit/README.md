# SZZ Master Kit - Usage Guide

This is a modular LaTeX revision system designed for the CVUT FEE Final State Exam (SZZ).

## Prerequisites
You need a TeX distribution with `xelatex` (for Chinese support) and `latexmk`.

**macOS (Homebrew):**
```bash
brew install --cask mactex
# or for a smaller installation:
brew install basictex
sudo tlmgr update --self
sudo tlmgr install latexmk collection-xetex collection-langchinese tcolorbox minted
```

## How to Compile
Run the following command in this directory:
```bash
make
```
This will generate `main.pdf` in the current directory.

## Structure
- `main.tex`: Root file.
- `chapters/00_Strategy_Analysis.tex`: **READ THIS FIRST**. Contains defense questions based on your thesis.
- `chapters/xx_Subject/TopicYY.tex`: Individual revision notes. Edit these files to add your own notes.

## Features
- **Bilingual**: Supports Chinese and English.
- **Cheat Sheets**: Each topic starts with a yellow box summary for last-minute review.
- **Killer Questions**: Red boxes highlight questions the committee might ask based on your specific profile.
