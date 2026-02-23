#import "../../../../shared/shared-values.typ": *
#import "../../../../core/line/line.typ": *
#import "../../../../shared/style/styles.typ": *

#let subConclusion = [#NOT A #OR B #AND #NOT B #OR C]
#let notSubConclusion = [#DarkRed([#NOT (#subConclusion)])]
#let claim = [(A #IMPLIES B #AND B #IMPLIES C) #IMPLIES A #IMPLIES C] 
#let r = [#NOT A #OR B]
#let notR = [#DarkBlue([#NOT (#r)])]
#let finalR = [#DarkBlue([A #AND #NOT B])]
#let finalQ = [#DarkYellow([B #AND #NOT C])]

#let HYPOTHETICAL_SYLLOGISM_PROOF = (
  [
    #emph[Claim:] #claim
  ],
  [
    { Subroutine }

    1. (A #IMPLIES B) #EQUIVALENT #NOT A #OR B #emph[(By implication as disjunction)] #IMPLIES #NOT A #OR B #AND B #IMPLIES C

    2. (B #IMPLIES C) #EQUIVALENT #NOT B #OR C #emph[(By implication as disjunction)] #IMPLIES #subConclusion

    #Line() 
    #THEREFORE #subConclusion
  ],
  [
    (#subConclusion) #IMPLIES (A #IMPLIES C)
  ],
  [
    (A #IMPLIES B) #EQUIVALENT #r #emph[(By implication as disjunction)] 
  ],
  [
    (#subConclusion) #IMPLIES (#r)
  ],
  [
    { Subroutine }

    1. (#subConclusion) #IMPLIES (#r) #EQUIVALENT #notSubConclusion #OR #r #emph[(Implication as disjunction)]

    2. #notSubConclusion #EQUIVALENT #notR #OR #DarkYellow([#NOT (#NOT B #OR C)]) #emph[(By De Morgan's Law)]

    #columns(2)[
      #align(center)[#notR]
      #IMPLIES A #AND #NOT B #emph[(By De Morgan's Law)]
      #colbreak()
      #align(center)[#DarkYellow([#NOT (#NOT B #OR C)])]
      #IMPLIES B #AND #NOT C #emph[(By De Morgan's Law)]
    ]
    #Line()
    #THEREFORE #notSubConclusion #IMPLIES #finalR #OR #finalQ
  ]

)
