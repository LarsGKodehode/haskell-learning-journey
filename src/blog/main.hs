-- The main entry point of a haskell program
main :: IO ()
main = putStrLn html

html :: String
html =
  makeHtml
    "The Functional Way"
    ( h1_ "The Functional Way"
        <> p_ "Checking this out"
    )

-- The compositional pattern in use here seems rather unfortunate
-- will have to research what patterns are common, how flexible the
-- language is and how relationships and partial evaluations can be expressed
makeHtml :: String -> String -> String
makeHtml title content = "<!DOCTYPE html>" ++ html_ (head_ (title_ title) <> body_ content)

element :: String -> String -> String
element tag content = "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

head_ :: String -> String
head_ = element "head"

title_ :: String -> String
title_ = element "title"

html_ :: String -> String
html_ = element "html"

body_ :: String -> String
body_ = element "body"

h1_ :: String -> String
h1_ = element "h1"

p_ :: String -> String
p_ = element "p"
