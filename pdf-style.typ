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