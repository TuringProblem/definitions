#import "../../../../shared/shared-values.typ": *
#import "../../../../core/line/line.typ": *
#import "../../../../shared/style/styles.typ": *
#import "../../../../shared/shared-functions.typ": *

#let data = (
  claim: [(A #IMPLIES B #AND B #IMPLIES C) #IMPLIES A #IMPLIES C],
  rhs: [A #IMPLIES C],
  lhs: [A #IMPLIES B #AND B #IMPLIES C],
  sub_one_conclusion: [#NOT A #OR B #AND #NOT B #OR C],
  sub_routine_two_lhs: [#NOT A #OR B],
  sub_routine_two_rhs: [#NOT B #OR C],
)

#let notSubConclusion = [#DarkRed([#NOT (#data.sub_one_conclusion)])]
#let r = [#NOT A #OR C]
#let notR = [#DarkBlue([#NOT (#r)])]
#let finalR = [#DarkBlue([A #AND #NOT B])]
#let finalQ = [#DarkYellow([B #AND #NOT C])]
#let rhs = [#NOT B #OR C]
#let lhs = [#NOT A #OR B]


#let HYPOTHETICAL_SYLLOGISM_PROOF = (
  [
    #emph[Claim:] #data.claim
  ],
  [
    #table(columns: (1fr, 1fr, 1fr, 1fr, 1fr), inset: 10pt, table.header(
      [#align(center)[A]], [#align(center)[B]], [#align(center)[C]], [#align(center)[A #IMPLIES C]], [#align(center)[A #IMPLIES B #AND B #IMPLIES C]],), 
      [#align(center)[T]], [#align(center)[T]], [#align(center)[T]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[T]]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[T]]],
      [#align(center)[T]], [#align(center)[T]], [#align(center)[F]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[F]]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[F]]],
      [#align(center)[T]], [#align(center)[F]], [#align(center)[T]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[T]]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[F]]],
      [#align(center)[T]], [#align(center)[F]], [#align(center)[F]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[F]]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[F]]],
      [#align(center)[F]], [#align(center)[T]], [#align(center)[T]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[T]]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[T]]],
      [#align(center)[F]], [#align(center)[T]], [#align(center)[F]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[T]]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[T]]],
      [#align(center)[F]], [#align(center)[F]], [#align(center)[T]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[T]]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[T]]],
      [#align(center)[F]], [#align(center)[F]], [#align(center)[F]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[T]]], [#align(center)[#box(fill: rgb(0, 255, 0, 70), width: 100pt)[T]]],
    ) 
  ]
)
