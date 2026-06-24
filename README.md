# Jamovi Quarto Handbook Starter

This is a starter Quarto book/website for a course-specific jamovi handbook.

## Preview the website

From this folder:

```bash
quarto preview
```

## Render website + PDF

```bash
quarto render
```

## Render only the PDF

```bash
quarto render --to pdf
```

## PDF prerequisite

If PDF rendering fails because LaTeX is missing, install TinyTeX:

```bash
quarto install tinytex
```

## Where output appears

Rendered files are written to `_book/`.

The website starts at `_book/index.html`.
The PDF should be `_book/jamovi-handbook.pdf`.
