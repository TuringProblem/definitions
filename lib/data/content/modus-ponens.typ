#import "../../core/card/basic-card.typ": *
#import "../../shared/style/styles.typ": *
#import "../../core/proof/formatted-proof.typ": *
#import "../../shared/shared-values.typ": *
#import "../../core/line/line.typ": *

/**
 * @Author: { @Override }
 * @Since:  20260222 @ 21:02  
 **/   

#let TRUE = apply(colors.green.dark, "true")

#let MODUS_PONENS_CONTENT = [
#align(center)[
    First click #link("https://en.wikipedia.org/wiki/Modus_ponens")[Modus Ponens] - to see the mathematical definition 
  ]

  #BasicCard(height: 70%, data: [
    Here is my understanding... essentially, with Modus Ponens - we assume the case where A implies B, i.e., "if 2+2 = 4, then 4 - 2 = 2". In this scenario, if we just assume B is #TRUE, then we don't need to worry about A becuase logically if B is #TRUE, then A #ApplyColor(colors.red.dark, "MUST") be #TRUE and here is the proof of that.

    #emph[Proof:]
    #FromattedProof(
          (
            [
              ((A #IMPLIES B) #AND B) #IMPLIES A 
            ],
            [
              A #IMPLIES B #EQUIVALENT #NOT A #OR B #emph[(By implication as disjunction)]
            ],
            [
              ((#NOT A #OR B) #AND B) #IMPLIES A
            ],
            [
              #NOT ((#NOT A #OR B) #AND B) #OR A) #emph[(By implication as disjunction)]

              { #emph[Subroutine] }:

              #NOT ((#NOT A #OR B) #AND B) #EQUIVALENT #NOT ( #NOT (A) #OR B) #OR #NOT B #emph[(By De Morgan's Law)]

              #NOT ( #NOT (A) #OR B) #EQUIVALENT A #AND #NOT B #emph[(By De Morgan's Law)]

              A #AND #NOT B #EQUIVALENT #FALSE #emph[(Since we asuumed A #AND B = #TRUTH)]

              #Line()
              #THEREFORE #FALSE #OR #NOT B #EQUIVALENT #FALSE #emph[(Since we assumed B = #TRUTH)]
            ],
            [
              #FALSE #OR A #IMPLIES A #emph[(By Law of Excluded Middle)]

              #Line()
              #THEREFORE ((A #IMPLIES B) #AND B) #IMPLIES A #EQUIVALENT A #align(right)[#QED]
            ]
          )
        )
        #table(columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr), inset: 10pt, table.header([#align(center)[A]], [#align(center)[#FALSE]], [#align(center)[B]], [#align(center)[#NOT B]], [#align(center)[#FALSE #OR A]], [#align(center)[A #OR #NOT B]]), 
          [#align(center)[T]], [#align(center)[F]], [#align(center)[T]], [#align(center)[F]], [#align(center)[T]], [#align(center)[T]],
          [#align(center)[T]], [#align(center)[F]], [#align(center)[F]], [#align(center)[T]], [#align(center)[T]], [#align(center)[T]], 
          [#align(center)[F]], [#align(center)[F]], [#align(center)[T]], [#align(center)[F]], [#align(center)[F]], [#align(center)[F]],
          [#align(center)[F]], [#align(center)[F]], [#align(center)[F]], [#align(center)[T]], [#align(center)[F]], [#align(center)[T]],
        )
        
  ])
]
