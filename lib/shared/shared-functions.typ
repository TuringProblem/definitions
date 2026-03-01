#let shell(text) = {
  return [( #emph[#text] )]
}

#let reason(text) = {
  let list = (
    "demorgans": shell("De Morgan's Law"), // !(p v q) => !p ^ !q
    "iad": shell("Implication as Disjunction"), // p => q <=> !p v q
    "iac": shell("Implication as Conjunction"), // p => q <=> !(p ^ !q)
    "lem": shell("Law of Excluded Middle"), // P v !P => T
    "lnc": shell("Law of Non Contradiction"), // P ^ !P => F 
    "dom": shell("Domination Law"), // P v T => T | P ^ F => F 
    "idempotent": shell("Idempotent Law"), // P v P => P | P ^ P => P
    "identity": shell("Identity Law"), // P ^ T => P | P v F => P
    "dn": shell("Double Negation Law"), // p <=> !(!p)
    "commutative": shell("Commutative Law"), // p v q <=> q v p | p ^ q <=> q ^ p
    "associative": shell("Assocativity Law"), // p v (q v r) <=> (p v q) v r | p ^ (q ^ r) <=> (p ^ q) ^ r
    "distributive": shell("Distributive Law"), // p v (q ^ r) <=> (p v q) ^ (p v r) | p ^ (q v r) <=> (p ^ q) v (p ^ r)
    "absorption": shell("Absorption Law"), // p v (p ^ q) => p | p ^ (p v q) => p
    "cp": shell("Contrapositive Law"), // p => q <=> !q => !p
    "bc": shell("Biconditional Law"), // p <=> q <=> (p => q) & (q => p) | p <=> q <=> (p ^ q) v (!p ^ !q)
  )

  return list.at(text)
}
