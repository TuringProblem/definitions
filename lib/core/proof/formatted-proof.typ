#import "../../shared/shared-values.typ": *

#let increment(value: int) = {
  return value + 1
}
/**
input: array of strings:

output: formatted proof as the following:

1. {data[0]}
2. {data[1]}
...
n. {data[n]}


use a map to iterate over the array and create the proof 
and prefix each line with a number
*/
#let FromattedProof(data) = {
  let proof = data.map(d => box(fill: rgb(25, 25, 25, 20), inset: 10pt, width: 100%, )[ #IMPLIES #d ]).join()

  return proof
}


