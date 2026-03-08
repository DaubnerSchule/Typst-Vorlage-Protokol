// Copyright (C) 2026 DaubnerSchule

#set document(title: [Protokoltitel])

#set text(
  font: "Arial",
  size: 14pt,
)

// var
#let title = "Protokoltitel"
#let name = "NAME"
#let class = "class"
#let teacher = "teacher"
#let subject = "subject"

// title page
#align(center)[
  #v(5cm)
  #image("../pic/htl-logo.png", width: 6cm)

  #text(size: 28pt, weight: "bold")[#title]

  #teacher #linebreak()
  #subject

  
  #v(4cm)
  *#name #linebreak()*
  *#datetime.today().display()*
]
#pagebreak()

// main content

#set page(
  paper: "a4",
  header: [
    #align(center)[#datetime.today().display()]
  ],

  footer: [
    #grid(
      columns: (1fr, 1fr, 1fr),
      align(left)[#class],
      align(center)[#name],
      align(right)[#counter(page).display()],
    )
  ],
)

// TOC
#set heading(numbering: "1.",)
#outline(indent: 1em)

= Inhaltsverzeichnis


= Quellen
