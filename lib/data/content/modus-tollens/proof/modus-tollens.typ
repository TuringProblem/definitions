#import "../../../../shared/style/styles.typ": *
#import "../../../../shared/shared-values.typ": *

#let MODUS_TOLLENS_PROOF = (
  [
    #emph[Claim:] A #IMPLIES B #IFF #NOT B #IMPLIES #NOT A
  ],[
    #table(columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr), inset: 10pt, table.header(
      align(center)[A], align(center)[#NOT A], align(center)[B], align(center)[#NOT B], align(center)[A #IMPLIES B], align(center)[#NOT B #IMPLIES #NOT A]),

      align(center)[T], align(center)[F], align(center)[T], align(center)[F], align(center)[T], align(center)[T], 
      align(center)[T], align(center)[F], align(center)[F], align(center)[T], align(center)[F], align(center)[F], 
      align(center)[F], align(center)[T], align(center)[T], align(center)[F], align(center)[T], align(center)[T], 
      align(center)[F], align(center)[T], align(center)[F], align(center)[T], align(center)[T], align(center)[T], 
    )
    #align(right)[#QED]
  ]
)
