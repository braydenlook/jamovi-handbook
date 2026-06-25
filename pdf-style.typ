// Basic PDF typography overrides for the Jamovi handbook

#set text(size: 10.5pt)

// Heading styles
#show heading.where(level: 1): set text(
  size: 20pt,
  weight: "bold",
  fill: rgb("#1B2A41")
)

#show heading.where(level: 2): set text(
  size: 15pt,
  weight: "bold",
  fill: rgb("#1F2937")
)

#show heading.where(level: 3): set text(
  size: 12pt,
  weight: "bold",
  fill: rgb("#374151")
)

// Make links a calm blue instead of default styling
#show link: set text(fill: rgb("#2F6FBB"))

// stops forcing blank pages before/after every chapter start
#show pagebreak: it => {
  if it.to == none { it } else { pagebreak() }
}

// stops figure captions from showing up in the TOC
#show figure: set figure(outlined: false)

// adds slight border to figures
#show figure: it => box(
  stroke: 0.5pt + luma(180),
  inset: 8pt,
  radius: 3pt,
  it
)

// stops paragraph indentation
#set par(first-line-indent: 0pt)

// makes spacing between newlines greater
#set par(spacing: 1.2em)

// for some reason the quarto yml isn't suppressing heading numbering past a depth level of 2. hard coding it here. 
#show heading.where(depth: 3): set heading(numbering: none)
#show heading.where(depth: 4): set heading(numbering: none)
#show heading.where(depth: 5): set heading(numbering: none)
#show heading.where(depth: 6): set heading(numbering: none)