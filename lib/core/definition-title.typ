#let definition(data: (title_text: none, example: none, title_definition: "", definition_content: auto)) = {
  let title = data.keys().filter(key => key != "title_definition" and key != "definition_content" and key != "example").map(key => data.at(key)).join(" ")
  let hasTitle = title != none 
  let example = data.keys().filter(key => key != "title_definition" and key != "title_text" and key != "definition_content").map(key => data.at(key)).join(" ")
  let hasExample = example != none



  if hasTitle {
    align(center)[#text(size:24pt)[#title]]
  } 
  v(1em)
  align(left)[#text(size:16pt)[#data.title_definition]]

  if hasExample {
    align(center)[#block(fill: rgb(25, 25, 25, 20), inset: 24pt, width: 100%)[#text(fill: rgb("#6b7280"), size:16pt)[#example]]]
  }

  align(left)[#data.definition_content]
}





