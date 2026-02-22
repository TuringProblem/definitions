#import "code-snippets/data.typ":* 
#import "titles/titles.typ": *
#import "../core/card/basic-card.typ": *
#import "../core/proof/formatted-proof.typ": *
#import "../shared/shared-values.typ"


#let NOT = "¬"
#let QED = "∎"


#let data = (
  definition_one: (
    title_text: TITLES.TITLE, 
    title_definition: TITLES.MODUS_PONENS,
    example: MODUS_PONENS,
    definition_content: [
      Definitions are words or phrases that have a precise meaning. Definitions are used to explain the meaning of words and phrases. Definitions can be used to provide clarity and understanding of complex ideas and concepts.
    ],
  ),
  definition_two: (
    title_definition: TITLES.MODUS_TOLENS,
    example: MODUS_TOLENS,
    definition_content: [
      #align(center)[
        First click #link("https://en.wikipedia.org/wiki/Modus_tollens")[Modus Tollens] - to see the mathematical definition 
      ]
      #BasicCard(height: 25%, data: [
        However, here is my interpretation of Modus Tollens. Basically if you know anything about logic - you know that the #link("https://en.wikipedia.org/wiki/Contraposition")[contrapositive] is the logical equivalent to implication. This is the closest relation I can think of when thinkin with respect to Modus Tollens.  
        
        Here is the proof:

        #emph[Proof:]
        #FromattedProof(("foo", "bar"))
      ])
    ], 
  )
)




