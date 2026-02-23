#import "../../shared/shared-values.typ": *
#import "../../core/line/line.typ": *

#let MODUS_PONENS = [
  #text(size: 10pt)[
    A #IMPLIES B
    #move(dx: 12pt)[B]
    #Line()
    A
  ]
]

#let MODUS_TOLLENS = [
  #text(size: 10pt)[
    A #IMPLIES B
    #move(dx: 8pt)[#NOT B]
    #Line()
    #NOT A
  ]
]

#let EXAMPLE_HS = [
  #text(size: 10pt)[
    A #IMPLIES B

    B #IMPLIES C
    #Line()
    A #IMPLIES C
  ]

]
