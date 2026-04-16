#!/usr/bin/env python3
"""Build a self-contained HTML page from a Typst file.

Modes:
  slideshow  — one slide at a time with keyboard/button navigation (default)
  document   — all pages stacked vertically for reading
"""

import argparse
import base64
import os
import subprocess
import sys
import tempfile
from pathlib import Path


def compile_svgs(source: str, tmp: str) -> list[Path]:
    svg_pattern = os.path.join(tmp, "page-{p}.svg")
    result = subprocess.run(
        ["typst", "compile", source, svg_pattern],
        capture_output=True, text=True
    )
    if result.returncode != 0:
        print(result.stderr, file=sys.stderr)
        sys.exit(1)
    pages = sorted(
        Path(tmp).glob("page-*.svg"),
        key=lambda p: int(p.stem.split("-")[1])
    )
    if not pages:
        print("No pages produced.", file=sys.stderr)
        sys.exit(1)
    return pages


def to_data_uri(path: Path) -> str:
    data = base64.b64encode(path.read_bytes()).decode()
    return f"data:image/svg+xml;base64,{data}"


def build_slideshow(pages: list[Path], title: str) -> str:
    slides_js = "[\n    " + ",\n    ".join(f"'{to_data_uri(p)}'" for p in pages) + "\n  ]"
    return f"""<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{title}</title>
  <style>
    *, *::before, *::after {{ box-sizing: border-box; margin: 0; padding: 0; }}
    body {{
      background: #111;
      color: #eee;
      font-family: sans-serif;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
      gap: 1rem;
      padding: 1rem;
    }}
    #slide-container {{
      width: 100%;
      max-width: min(95vw, calc(95vh * 16 / 9));
      aspect-ratio: 16 / 9;
      background: #000;
      border-radius: 4px;
      overflow: hidden;
      box-shadow: 0 8px 32px rgba(0,0,0,0.6);
    }}
    #slide-img {{ width: 100%; height: 100%; object-fit: contain; display: block; }}
    #controls {{ display: flex; align-items: center; gap: 1.5rem; }}
    button {{
      background: #333; color: #eee; border: none; border-radius: 4px;
      padding: 0.5rem 1.2rem; font-size: 1rem; cursor: pointer; transition: background 0.15s;
    }}
    button:hover {{ background: #555; }}
    button:disabled {{ opacity: 0.3; cursor: default; }}
    #counter {{ font-size: 0.95rem; color: #aaa; min-width: 5rem; text-align: center; }}
  </style>
</head>
<body>
  <div id="slide-container">
    <img id="slide-img" alt="Slide">
  </div>
  <div id="controls">
    <button id="prev-btn" onclick="go(-1)">&#8592; Prev</button>
    <span id="counter"></span>
    <button id="next-btn" onclick="go(1)">Next &#8594;</button>
    <button onclick="toggleFullscreen()">&#x26F6; Fullscreen</button>
  </div>
  <script>
  const slides = {slides_js};
  let cur = 0;
  const img = document.getElementById('slide-img');
  const counter = document.getElementById('counter');
  const prevBtn = document.getElementById('prev-btn');
  const nextBtn = document.getElementById('next-btn');
  function show(n) {{
    cur = Math.max(0, Math.min(n, slides.length - 1));
    img.src = slides[cur];
    counter.textContent = (cur + 1) + ' / ' + slides.length;
    prevBtn.disabled = cur === 0;
    nextBtn.disabled = cur === slides.length - 1;
  }}
  function go(d) {{ show(cur + d); }}
  document.addEventListener('keydown', e => {{
    if (e.key === 'ArrowRight' || e.key === 'ArrowDown' || e.key === ' ') go(1);
    if (e.key === 'ArrowLeft'  || e.key === 'ArrowUp')                     go(-1);
    if (e.key === 'Home') show(0);
    if (e.key === 'End')  show(slides.length - 1);
    if (e.key === 'f' || e.key === 'F') toggleFullscreen();
  }});
  function toggleFullscreen() {{
    const el = document.getElementById('slide-container');
    if (!document.fullscreenElement) el.requestFullscreen();
    else document.exitFullscreen();
  }}
  show(0);
  </script>
</body>
</html>"""


def build_document(pages: list[Path], title: str) -> str:
    imgs = "\n    ".join(
        f'<img src="{to_data_uri(p)}" alt="Page {i+1}" class="page">'
        for i, p in enumerate(pages)
    )
    return f"""<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{title}</title>
  <style>
    *, *::before, *::after {{ box-sizing: border-box; margin: 0; padding: 0; }}
    body {{
      background: #888;
      padding: 2rem 1rem;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 1.5rem;
    }}
    .page {{
      width: 100%;
      max-width: 850px;
      display: block;
      box-shadow: 0 4px 16px rgba(0,0,0,0.4);
      border-radius: 2px;
    }}
  </style>
</head>
<body>
    {imgs}
</body>
</html>"""


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", help="Input .typ file")
    parser.add_argument("output", help="Output .html file")
    parser.add_argument("--mode", choices=["slideshow", "document"],
                        default="slideshow",
                        help="slideshow (default) or document")
    args = parser.parse_args()

    title = Path(args.source).stem.replace("-", " ").title()

    with tempfile.TemporaryDirectory() as tmp:
        pages = compile_svgs(args.source, tmp)
        if args.mode == "document":
            html = build_document(pages, title)
        else:
            html = build_slideshow(pages, title)

    Path(args.output).write_text(html, encoding="utf-8")
    print(f"Written {len(pages)} pages → {args.output} ({args.mode})")


if __name__ == "__main__":
    main()
