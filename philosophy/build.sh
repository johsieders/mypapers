#!/bin/bash
# Simple build script for the Jupyter Book

echo "Building Jupyter Book..."
echo "========================"

# Check if jupyter-book is installed
if ! command -v jupyter-book &> /dev/null
then
    echo "jupyter-book not found. Installing requirements..."
    pip install -r requirements.txt
fi

# Clean previous build
echo "Cleaning previous build..."
jupyter-book clean .

# Build HTML
echo "Building HTML version..."
jupyter-book build .

echo ""
echo "Build complete!"
echo "Open _build/html/index.html in your browser to view the book."
echo ""
echo "To build PDF, run: jupyter-book build . --builder pdflatex"
