#import "core/definition-title.typ": definition

#let data = (
  definition_one: (
    title_text: "Logical Definitions",
    title_definition: "Definitions",
    definition_content: [
      Definitions are words or phrases that have a precise meaning. Definitions are used to explain the meaning of words and phrases. Definitions can be used to provide clarity and understanding of complex ideas and concepts.
    ],
  ),
  definition_two: (
    title_definition: "Definitions",
    definition_content: [
      Definitions are words or phrases that have a precise meaning. Definitions are used to explain the meaning of words and phrases. Definitions can be used to provide clarity and understanding of complex ideas and concepts.
    ],
  )
)

#definition(data: data.definition_one)
#definition(data: data.definition_two)
