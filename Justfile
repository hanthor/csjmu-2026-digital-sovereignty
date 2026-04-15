# Digital Sovereignty talk — task runner
# Usage: just <recipe>

# List available recipes
default:
    @just --list

# ── Build ─────────────────────────────────────────────────────────────

# Compile all .typ files to PDF
build:
    typst compile slides.typ slides-4-3.pdf
    typst compile slides-16-9.typ slides-16-9.pdf
    typst compile script.typ script.pdf

# Compile a specific file (e.g. just compile slides.typ)
compile file:
    typst compile {{file}}

# Watch slides-content.typ and recompile 4:3 on change
watch:
    typst watch slides.typ slides-4-3.pdf

# ── Lint ──────────────────────────────────────────────────────────────

# Check all .typ files compile without errors
lint:
    @echo "Checking slides.typ..."
    @typst compile slides.typ /tmp/lint-slides-4-3.pdf
    @echo "Checking slides-16-9.typ..."
    @typst compile slides-16-9.typ /tmp/lint-slides-16-9.pdf
    @echo "Checking script.typ..."
    @typst compile script.typ /tmp/lint-script.pdf
    @echo "All OK"

# ── Setup ─────────────────────────────────────────────────────────────

# Activate git pre-commit hook for this repo
install-hooks:
    git config core.hooksPath .githooks
    @echo "Pre-commit hook active"

# Install typst via Homebrew (if not already installed)
install-typst:
    brew install typst

# Install static Noto Sans fonts (fixes variable font warning)
install-fonts:
    sudo dnf install -y google-noto-sans-fonts fonts-linuxlibertine

# Install all dependencies and activate hooks (run once after cloning)
setup: install-typst install-fonts install-hooks
    @echo "Setup complete — run 'just build' to compile"
