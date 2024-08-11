-- Not going to lie. I don't really understand this yet
-- https://learn-haskell.blog/03-html/04-safer_construction.html
newtype Html = Html String

newtype Structure = Structure String

getStructureString :: Structure -> String
getStructureString struct =
  case struct of
    Structure str -> str

-- Type Alias
type Title = String

-- The main entry point of a haskell program
main :: IO ()
main = putStrLn (render_ html)

-- html :: Html
html =
  html_
    "Some title"
    ( append_
        (h1_ "Some heading")
        ( append_
            (p_ "A paragraph")
            (p_ "Another paragrap")
        )
    )

append_ :: Structure -> Structure -> Structure
append_ contentA contentB =
  Structure (getStructureString contentA <> getStructureString contentB)

render_ :: Html -> String
render_ html =
  case html of
    Html str -> str

html_ :: Title -> Structure -> Html
html_ title content =
  Html
    ( element
        "html"
        ( element "head" (element "title" title)
            <> element "body" (getStructureString content)
        )
    )

element :: String -> String -> String
element tag content = "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

title_ :: String -> Structure
title_ = Structure . element "title"

h1_ :: String -> Structure
h1_ = Structure . element "h1"

p_ :: String -> Structure
p_ = Structure . element "p"
