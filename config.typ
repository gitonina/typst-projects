// Configuración de layout del documento (página, texto, párrafo, lista)

#let conf(doc) = {
  set page(
    paper: "us-letter",
    margin: (x: 1.4cm, y: 1.4cm),
  )
  set text(size: 9pt, font: "New Computer Modern")
  set par(justify: true, leading: 0.55em)
  set list(indent: 0.6em, body-indent: 0.4em)
  doc
}
