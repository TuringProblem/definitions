#import "../../../core/card/basic-card.typ": *
#import "../../../shared/shared-values.typ": *
#import "../../../core/proof/formatted-proof.typ": *
#import "proof/hypothetical-syllogism.typ": *

#let HS_CONTENT = [
  #align(center)[ First click #link("https://en.wikipedia.org/wiki/Hypothetical_syllogism")[Hypothetical Syllogism] - to see the mathematical definition ]
  #BasicCard(height: 100%, data: [
    One way I look at Hypothetical Syllogism is the transitivity rule. Pretty much if you know about mathematical functions then you should know about the transitivty rule. If not here is a scenario, if you have A #LESS_THAN_OR_EQUAL_TO B #AND B #LESS_THAN_OR_EQUAL_TO C #IMPLIES A #LESS_THAN_OR_EQUAL_TO C.

    #emph[Still confused?]

    imagine: 

    #align(center)[
      ```javascript
      let x = 100
      let y = 50
      let z = 10

      x >= y ? // yes, 100 > 50 
      y >= z ? // yes, 50 > 10 
      x >= z ? // yes, 100 > 10
      ```
    ]

    Not good enough? Time to prove it.

    #emph[Proof:]
    #FormattedProof((HYPOTHETICAL_SYLLOGISM_PROOF))
  ])
]
