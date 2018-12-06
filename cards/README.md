## Lesson 1 - Basics
**
* code is organized into modules of code (module is a collection of different methods and functions).
* convention is to use double-quotes in elixir code.
* "do" and "end" are like {} in javascript, defining a block of code.
* "def" stands for "define".
* opening the elixir shell: "iex -S mix".
* joining strings in Elixir is done by using template strings "#{value}"
**

## Lesson 2 - Passing arguments
**
* Cards.shuffle/0 === 'you called shuffle cards with 0 arguments'
* arity - number of arguments the function accepts
* Enum module is used for working with lists of data
****

## Lesson 3 - Lists
**
* List - a collection of elements of a special type
* List comperhensions - a kind of a for loop in Elixir. "for item <- items do [code] end". A comperhension is a mapping function (making a new array).
* Nesting comperhensions inside one another is the wrong way
* Best way for more comperhensions is to double them up "for item <- items, el <- els do [code] end"
**

## Lesson 4 - Tuples
**
* Tuple - an array-like structure in which each element has a special meaning in a certain order
* tuple is encapsulated with {} in Elixir
**

## Lesson 5 - Pattern Matching
**
* Pattern matching - Elixir's replacement for variable assigning
* { item1, item 2 } = { el1, el2 } -- since values on the left and the right have = sign between them, values on the left will be matched to the ones on the right and will be separate "variables".
* Any time we see "=" sign, we gotta think - Pattern Matching
* Pattern matching works with Lists as well as Tuples.
**

