# Notes

Noteworthy elements on my journey to learn Haskell.

## Haskell Entrypoint
From what I understand, the element (function) named `main` is the entrypoint of a Haskell program.

## Operator precedence and fixity
Operators in Haskell has some implicit *fixity*, ie they give the left or right input an impliciy precedence, and evalute them first. The `<>` operator has a right *fixity*, leading to `"<html> <> content <> </html>` being evaluated as `<html> <> (content <> </html>)`. There is also some options for giving a precedence to an operator from `1-10`, which could be useful in creating Domain Languages.

## Formatting
There does not seem to be any formal styling guides enforced.

