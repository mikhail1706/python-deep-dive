# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

An educational Python repository covering SOLID principles and GoF design patterns. Each file is a self-contained, runnable example — not a library or application. Docstrings are written in Russian.

## Commands

This project uses `uv` for package management.

```bash
# Run a specific example file
uv run python courses/01_design_patterns_solid/patterns/03_builder/builder.py

# Lint
uv run ruff check .

# Format
uv run ruff format .
```

Requires Python 3.14+. The `.venv` is managed by `uv` and uses `ruff` as the sole dev dependency.

## Repository Structure

```
courses/
  01_design_patterns_solid/
    solid/          # SOLID principles (5 files, one per principle)
    patterns/       # GoF patterns, each in its own numbered folder
      03_builder/   # Multiple files per pattern showing variants
      04_factories/
      ...           # 03–24 covering all major GoF patterns
    temp/           # Output files written by examples (e.g., journal.txt)
```

## Code Conventions

- Every file is an independent script with executable demo code at module level (no `if __name__ == '__main__':` guard).
- Pattern folders often contain multiple files showing different implementation variants (e.g., `builder.py`, `builder_facets.py`, `builder_inheritance.py`).
- File paths hardcoded in some older examples reference `C:/Users/Mike/...` — update these to match the local environment when running.
- Patterns numbered 01–02 are absent; numbering starts at 03 (Builder).