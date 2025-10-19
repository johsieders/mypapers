# Philosophy of Mathematics - Jupyter Book

This directory contains a Jupyter Book on the philosophy of mathematics, specifically examining formalism vs. Platonism.

## Structure

```
philosophy/
├── _config.yml           # Jupyter Book configuration
├── _toc.yml             # Table of contents
├── intro.md             # Landing page
├── mathematics_existence.md  # Main essay
├── references.bib       # Bibliography
├── westfield2.png       # Logo (to be added)
└── README.md           # This file
```

## Building the Book

### Prerequisites

Install Jupyter Book and required extensions:

```bash
pip install jupyter-book
pip install sphinx-proof sphinx-togglebutton
```

### Build HTML

To build the HTML version:

```bash
jupyter-book build philosophy/
```

The HTML output will be in `philosophy/_build/html/`.

### Build PDF

To build the PDF version:

```bash
jupyter-book build philosophy/ --builder pdflatex
```

The PDF output will be in `philosophy/_build/latex/`.

### Clean Build

To clean previous builds:

```bash
jupyter-book clean philosophy/
```

## Viewing the Book

After building, open `philosophy/_build/html/index.html` in your browser.

## Publishing

To publish to GitHub Pages, you can use:

```bash
ghp-import -n -p -f philosophy/_build/html
```

## Author

Johannes Siedersleben

## License

Copyright 2025, Johannes Siedersleben
