#import "../../core/card/basic-card.typ": *
#import "../../core/proof/formatted-proof.typ": *
#import "../../shared/shared-values.typ": *

#let MODUS_TOLENS_CONTENT = [
      #align(center)[
        First click #link("https://en.wikipedia.org/wiki/Modus_tollens")[Modus Tollens] - to see the mathematical definition 
      ]
      #BasicCard(height: 45%, data: [
        However, here is my interpretation of Modus Tollens. Basically if you know anything about logic - you know that the #link("https://en.wikipedia.org/wiki/Contraposition")[contrapositive] is the logical equivalent to implication. This is the closest relation I can think of when thinkin with respect to Modus Tollens.  
        
        Here is the proof:

        #emph[Proof:]
        #FromattedProof(
          ([
            #emph[Claim:] A #IMPLIES B #IFF #NOT B #IMPLIES #NOT A
          ],[
            #table(columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr), inset: 10pt, table.header(
              align(center)[A], 
              align(center)[#NOT A],
              align(center)[B], 
              align(center)[#NOT B], 
              align(center)[A #IMPLIES B], 
              align(center)[#NOT B #IMPLIES #NOT A]),

              align(center)[T], 
              align(center)[F], 
              align(center)[T], 
              align(center)[F], 
              align(center)[T], 
              align(center)[T], 
              align(center)[T], 
              align(center)[F], 
              align(center)[F], 
              align(center)[T], 
              align(center)[F], 
              align(center)[F], 
              align(center)[F], 
              align(center)[T], 
              align(center)[T], 
              align(center)[F], 
              align(center)[T], 
              align(center)[T], 
              align(center)[F], 
              align(center)[T], 
              align(center)[F], 
              align(center)[T], 
              align(center)[T], 
              align(center)[T], 
            )
            #align(right)[#QED]
          ]))
      ])

]
