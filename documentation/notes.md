# Notes

Noteworthy elements on my journey to learn Haskell.

## Haskell Entrypoint

From what I understand, the element (function) named `main` is the entrypoint of a Haskell program.

## Operator precedence and fixity

Operators in Haskell has some implicit _fixity_, ie they give the left or right input an impliciy precedence, and evalute them first. The `<>` operator has a right _fixity_, leading to `"<html> <> content <> </html>` being evaluated as `<html> <> (content <> </html>)`. There is also some options for giving a precedence to an operator from `1-10`, which could be useful in creating Domain Languages.

## Formatting

There does not seem to be any formal styling guides enforced.

## Partial Application

Haskell functions can be partial applied, specializing it for the concrete case.

```haskell
add_ :: Int -> Int -> Int
add_ x y = x + y

add2_ :: Int -> Int
add2_ = add_ 2

a :: Int
a = add2_ 4
```

## Domain Languages

More concrete/specific languages that are created from higher languages needs to account for quite a bit more then just narrowing down the functionalities. There might be some better solution for deriving some form of linters and documentation. Machine Learning Models might be provide some solution here for guiding along others, with less domain expertise.
