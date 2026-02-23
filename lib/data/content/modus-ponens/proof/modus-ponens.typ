#import "../../../../core/line/line.typ": *
#import "../../../../shared/shared-values.typ": *

#let MODUS_PONENS_PROOF = (
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
