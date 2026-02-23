#import "code-snippets/data.typ":* 
#import "titles/titles.typ": *
#import "content/modus-tollens/index.typ": *
#import "content/modus-ponens/index.typ": *
#import "content/hypothetical-syllogism/index.typ": *


/**
 * @Author: { @Override }
 * @Since:  20260222 @  20:25
 **/

#let data = (
  definition_one: (
    title_text: TITLES.TITLE, 
    title_definition: TITLES.MP,
    example: MODUS_PONENS,
    definition_content: MP_CONTENT,
  ),
  definition_two: (
    title_definition: TITLES.MT,
    example: MODUS_TOLLENS,
    definition_content: MT_CONTENT,
  ),
  definition_three: (
    title_definition: TITLES.HS,
    example: EXAMPLE_HS,
    definition_content: HS_CONTENT,
  )
)




