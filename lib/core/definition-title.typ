#let definition(data: (title_text: none, title_definition: "", definition_content: auto)) = {
  let title = data.keys().filter(key => key != "title_definition" and key != "definition_content").map(key => data.at(key)).join(" ")
  let hasTitle = title != none 


  if hasTitle {
    align(center)[#text(size:24pt)[#title]]
  } 

  v(1em)
  align(left)[#text(size:16pt)[#data.title_definition]]
  align(left)[#data.definition_content]
}





