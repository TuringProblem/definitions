#import "../../shared/shared-values.typ": *
#import "../../core/line/line.typ": *

#let MODUS_PONENS = [
#text(size: 10pt)[
  A → B
  #move(dx: 12pt)[B]
  #Line()
  A
  ]
]

#let MODUS_TOLENS = [
#text(size: 10pt)[
  A → B
  #move(dx: 8pt)[#NOT B]
  #Line()
  #NOT A
  ]
]

