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
  yellow: (
    lightest: rgb(255, 255, 0, 15),
    light: rgb(255, 255, 0, 50),
    strandard: rgb(255, 255, 0, 85),
    dark: rgb(255, 255, 0),
  ),
  purple: (
    lightest: rgb(255, 0, 255, 15),
    light: rgb(255, 0, 255, 50),
    strandard: rgb(255, 0, 255, 85),
    dark: rgb(255, 0, 255),
  ),
  blue: (
    lightest: rgb(0, 0, 255, 15),
    light: rgb(0, 0, 255, 50),
    strandard: rgb(0, 0, 255, 85),
    dark: rgb(0, 0, 255),
  ),
)

#let apply(color, content) = {
  return text(fill: color, content)
}

#let DarkGreen(content) = {
  return apply(colors.green.dark, content)
}

#let DarkRed(content) = {
  return apply(colors.red.dark, content)
}

#let DarkYellow(content) = {
  return apply(colors.yellow.dark, content)
}

#let DarkPurple(content) = {
  return apply(colors.purple.dark, content)
}

#let DarkBlue(content) = {
  return apply(colors.blue.dark, content)
}
