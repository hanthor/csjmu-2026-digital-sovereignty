# Digital Sovereignty talk — task runner
# Usage: just <recipe>

# On Windows, force PowerShell instead of hoping 'sh' exists
set windows-shell := ["powershell.exe", "-NoProfile", "-Command"]

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

# Build PPTX (light 16:9 by default)
pptx file="slides-16-9.typ" out="slides.pptx": _ensure-deps
    uv run build-pptx.py {{file}} {{out}}

# Watch slides-16-9.typ and recompile 16:9 on change (default for screen)
watch: _ensure-deps
    typst watch slides-16-9.typ slides-16-9.pdf

# Watch 4-3 script
watch-4-3: _ensure-deps
    typst watch slides.typ slides-4-3.pdf

# ── Lint ──────────────────────────────────────────────────────────────

# Check all .typ files compile without errors
lint: _ensure-deps
    @echo "Checking slides.typ..."
    @typst compile slides.typ slides-4-3-lint.pdf
    @echo "Checking slides-16-9.typ..."
    @typst compile slides-16-9.typ slides-16-9-lint.pdf
    @echo "Checking script.typ..."
    @typst compile script.typ script-lint.pdf
    @echo "All OK"

# ── Setup ─────────────────────────────────────────────────────────────

# Install all dependencies and activate hooks (run once after cloning)
setup: install-deps install-hooks
    @echo "Setup complete — run 'just build' to compile"

# Install typst and fonts (Linux/macOS)
[linux]
[macos]
install-deps:
    brew install typst
    brew install --cask font-linux-libertine

# Install typst (Windows)
[windows]
install-deps:
    winget install dtolnay.typst

# Activate git pre-commit hook for this repo
install-hooks:
    git config core.hooksPath .githooks

# ── Private ───────────────────────────────────────────────────────────

# Check typst is available before running build/lint commands (Linux/macOS)
[linux]
[macos]
[private]
_ensure-deps:
    @which typst > /dev/null || (echo "typst not found — run 'just install-deps'" && exit 1)

# Check typst is available before running build/lint commands (Windows)
[windows]
[private]
_ensure-deps:
    @if (!(Get-Command typst -ErrorAction SilentlyContinue)) { Write-Host "typst not found — run 'just install-deps'"; exit 1 }
