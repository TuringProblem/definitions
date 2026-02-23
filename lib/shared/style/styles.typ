#let colors = (
  black: (
    lightest: rgb(0, 0, 0, 15),
    light: rgb(0, 0, 0, 50),
    strandard: rgb(0, 0, 0, 85),
    dark: rgb(0, 0, 0),
  ),
  white: (
    lightest: rgb(255, 255, 255, 15),
    light: rgb(255, 255, 255, 50),
    strandard: rgb(255, 255, 255, 85),
    dark: rgb(255, 255, 255),
  ),
  green: (
    lightest: rgb(0, 255, 0, 15),
    light: rgb(0, 255, 0, 50),
    strandard: rgb(0, 255, 0, 85),
    dark: rgb(10, 155, 55),
  ),
  red: (
    lightest: rgb(255, 0, 0, 15),
    light: rgb(255, 0, 0, 50),
    strandard: rgb(255, 0, 0, 85),
    dark: rgb(255, 0, 0),
  ),
)

#let apply(color, content) = {
  return text(fill: color, content)
}

#let ApplyColor(color_variant, content) = {
  return apply(color_variant, content)
}


