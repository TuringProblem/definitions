#import "../../../../shared/shared-values.typ": *
#import "../../../../core/line/line.typ": *
#import "../../../../shared/style/styles.typ": *
#import "../../../../shared/shared-functions.typ": *

#let subConclusion = [#NOT A #OR B #AND #NOT B #OR C]
#let notSubConclusion = [#DarkRed([#NOT (#subConclusion)])]
#let claim = [(A #IMPLIES B #AND B #IMPLIES C) #IMPLIES A #IMPLIES C] 
#let r = [#NOT A #OR C]
#let notR = [#DarkBlue([#NOT (#r)])]
#let finalR = [#DarkBlue([A #AND #NOT B])]
#let finalQ = [#DarkYellow([B #AND #NOT C])]

#let HYPOTHETICAL_SYLLOGISM_PROOF = (
  [
    #emph[Claim:] #claim
  ],
  [
    { Subroutine }

    1. (A #IMPLIES B) #EQUIVALENT #NOT A #OR B #reason("iad") #IMPLIES #NOT A #OR B #AND B #IMPLIES C

    2. (B #IMPLIES C) #EQUIVALENT #NOT B #OR C #reason("iad") #IMPLIES #subConclusion

    #Line() 
    #THEREFORE #subConclusion
  ],
  [
    (#subConclusion) #IMPLIES (A #IMPLIES C)
  ],
  [
    (A #IMPLIES C) #EQUIVALENT #r #reason("iad") 
  ],
  [
    (#subConclusion) #IMPLIES (#r)
  ],
  [
    { Subroutine }

    1. (#subConclusion) #IMPLIES (#r) #EQUIVALENT #notSubConclusion #OR #r #reason("iad")

    2. #notSubConclusion #EQUIVALENT #notR #OR #DarkYellow([#NOT (#NOT B #OR C)]) #reason("demorgans")


    #columns(2)[
      #align(center)[#notR]
    #Line()
      #align(center)[#IMPLIES A #AND #NOT B #emph[(By De Morgan's Law)]]
      #colbreak()
      #align(center)[#DarkYellow([#NOT (#NOT B #OR C)])]
    #Line()
      #align(center)[#IMPLIES B #AND #NOT C #reason("demorgans")]
    ]
    #Line()
    #THEREFORE #notSubConclusion #EQUIVALENT #finalR #OR #finalQ
  ],
  [
    (#finalR #OR #finalQ) #OR #r

    #finalR #IMPLIES #FALSE

    #finalQ #IMPLIES #FALSE

    #THEREFORE ( #finalR #OR #finalQ ) #IMPLIES ( #FALSE #OR #FALSE ) #IMPLIES #FALSE 
  ],
  [
    #FALSE #OR #r
  ]
)
