# Digital Sovereignty talk — task runner
# Usage: just <recipe>

# List available recipes
default:
    @just --list

# ── Build ─────────────────────────────────────────────────────────────

# Compile all .typ files to PDF
build: _ensure-deps
    typst compile slides.typ slides-4-3.pdf
    typst compile slides-16-9.typ slides-16-9.pdf
    typst compile slides-dark.typ slides-dark-4-3.pdf
    typst compile slides-dark-16-9.typ slides-dark-16-9.pdf
    typst compile script.typ script.pdf

# Compile a specific file (e.g. just compile slides.typ)
compile file: _ensure-deps
    typst compile {{file}}

# Build self-contained HTML slideshow (light 16:9 by default)
html file="slides-16-9.typ" out="slides.html": _ensure-deps
    python3 build-html.py {{file}} {{out}}

# Build self-contained HTML document from script
html-script: _ensure-deps
    python3 build-html.py script.typ script.html --mode document

# Watch slides-content.typ and recompile 4:3 on change
watch: _ensure-deps
    typst watch slides.typ slides-4-3.pdf

# ── Lint ──────────────────────────────────────────────────────────────

# Check all .typ files compile without errors
lint: _ensure-deps
    @echo "Checking slides.typ..."
    @typst compile slides.typ /tmp/lint-slides-4-3.pdf
    @echo "Checking slides-16-9.typ..."
    @typst compile slides-16-9.typ /tmp/lint-slides-16-9.pdf
    @echo "Checking slides-dark.typ..."
    @typst compile slides-dark.typ /tmp/lint-slides-dark-4-3.pdf
    @echo "Checking slides-dark-16-9.typ..."
    @typst compile slides-dark-16-9.typ /tmp/lint-slides-dark-16-9.pdf
    @echo "Checking script.typ..."
    @typst compile script.typ /tmp/lint-script.pdf
    @echo "All OK"

# ── Setup ─────────────────────────────────────────────────────────────

# Install all dependencies and activate hooks (run once after cloning)
setup: install-deps install-hooks
    @echo "Setup complete — run 'just build' to compile"

# Install typst and fonts
install-deps:
    brew install typst
    brew install --cask font-linux-libertine

# Activate git pre-commit hook for this repo
install-hooks:
    git config core.hooksPath .githooks
    @echo "Pre-commit hook active"

# ── Private ───────────────────────────────────────────────────────────

# Check typst is available before running build/lint commands
[private]
_ensure-deps:
    @which typst > /dev/null || (echo "typst not found — run 'just install-deps'" && exit 1)
