#import "../../../core/card/basic-card.typ": *
#import "../../../core/proof/formatted-proof.typ": *
#import "../../../shared/shared-values.typ": *
#import "proof/modus-tollens.typ": *

/**
 * @Author: { @Override }
 * @Since:  20260222 @ 22:21  
 **/
 
#let MT_CONTENT = [
      #align(center)[ First click #link("https://en.wikipedia.org/wiki/Modus_tollens")[Modus Tollens] - to see the mathematical definition ]

      #BasicCard(height: 45%, data: [
        However, here is my interpretation of Modus Tollens. Basically if you know anything about logic - you know that the #link("https://en.wikipedia.org/wiki/Contraposition")[contrapositive] is the logical equivalent to implication. This is the closest relation I can think of when thinkin with respect to Modus Tollens.  
        
        Here is the proof:

        #emph[Proof:]
        #FromattedProof((MODUS_TOLLENS_PROOF))
      ])

]
