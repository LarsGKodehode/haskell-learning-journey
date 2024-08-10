-- The main entry point of a haskell program
main = putStrLn html

html = makeHtml "My Title" "hello world!"

-- The compositional patter in use here seems rather unfortunate
-- will have to research what patterns are common, how flexible the
-- language is and how relationships and bindings can be expressed
makeHtml title content = html_ (head_ (title_ title) <> body_ content)

head_ content = "<head>" <> content <> "</head>"

title_ content = "<title>" <> content <> "</title>"

html_ content = "<!DOCTYPE html><html>" <> content <> "</html>"

body_ content = "<body><h1>" <> content <> "</h1></body>"

