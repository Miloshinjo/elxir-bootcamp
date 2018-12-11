## Lesson 1 - Basics

* code is organized into modules of code (module is a collection of different methods and functions).
* convention is to use double-quotes in elixir code.
* "do" and "end" are like {} in javascript, defining a block of code.
* "def" stands for "define".
* opening the elixir shell: *iex -S mix*.
* joining strings in Elixir is done by using template strings *#{value}*
* Move away from IF statements and instead use CASE and Pattern Matching
* 0 is not falsy in Elixir.

## Lesson 2 - Passing arguments

* Cards.shuffle/0 === 'you called shuffle cards with 0 arguments'
* arity - number of arguments the function accepts
* Enum module is used for working with lists of data
* Passing a reference to a function as an argument is not done in the same way as other stuff is passed to a function. Passing a function reference has a special syntax: *&function_name/1*. *&* means -> "I'm passing a reference to a function. */1* means -> I am passing a function taht takes 1 argument (if we have more functions with the same name).

## Lesson 3 - Lists

* List - a collection of elements of a special type
* List comperhensions - a kind of a for loop in Elixir. *for item <- items do [code] end*. A comperhension is a mapping function (making a new array).
* Nesting comperhensions inside one another is the wrong way
* Best way for more comperhensions is to double them up *for item <- items, el <- els do [code] end*
* For joining lists together we use the operator *++*.

## Lesson 4 - Tuples

* Tuple - an array-like structure in which each element has a special meaning in a certain order
* tuple is encapsulated with {} in Elixir

## Lesson 5 - Pattern Matching

* Pattern matching - Elixir's replacement for variable assigning
* { item1, item 2 } = { el1, el2 } -- since values on the left and the right have = sign between them, values on the left will be matched to the ones on the right and will be separate "variables".
* Any time we see "=" sign, we gotta think - Pattern Matching
* Pattern matching works with Lists as well as Tuples.
* If the left-hand side has a hard-coded value, Elixir will REQUIRE that a right-hand side have the same exact value
* Values in a pattern matching block that start with the underscore (_), will be skipped when doing pattern matching
* *[r, g, b | _tail] = list* - when we want to pull of only 3 elements from a big list, _tail represents other values we are not interesting.
* Values can be pattern matched directly into the function arguments list.

## Lesson 6 - Saving Files

* How Elixir works: Code We Write --> Elixir --> Erlang --> BEAM.
* We can freely write erlang code inside elixir apps. For that we use *:erlang* syntax.

## Lesson 7 - Atoms

* Atom - Primitive data type. Written with a colon --> *:item*. Used mostly for status messages.
* Think of atoms exactly like strings. Difference is that strings are used to put together some information that is passed to a user, while atoms are used for codyfing stuff we developers see.

## Lesson 8 - Pipe operator

* Pipe operator - Sends the result of previous function down the chain to be passed as the first argument into the next function
* Written with | and >, like this *|>*.

## Lesson 9 - Dependencies and Documentation

* Dependencies are defined at the bottom of the mix.exs file, and new dependencies can be put into "deps" method. After that a command is run - "mix deps.get", to install all dependencies.
* Documentation is written to facilitate understanding of the functions "{:ex_doc, ~> "0.12"}"
* ex_doc - *package* for writing documentation for the project
* There are 2 types of documentation - Module documentation and Function documentation. Both explain what their respective fields do. Documentation should be brief and to the point.
* Module docs syntax: *@moduledoc """ [docs] """*
* Function docs syntax: *@doc """ [docs] """*
* Docs are build using the command *mix docs*.

## Lesson 10 - Testing

* There are 2 types of tests in Elixir. 1) Case tests where you test some assertion or refutation 2) *doctest* (very unique to Elixir and innovative)
* Case tests can use 2 keywords *assert* or *refute* that will act depending on the boolean passed on the right side.

## Lesson 11 - Maps

* Map - collection of key-value pairs (Nearly identical to Javascript objects).
* Syntax: *colors = %{primary: "red", secondary: "blue"}*. Properties can be accessed like in objects - *colors.primary* or *colors.secondary*. Pattern matching works great with maps, we can assign any value from a map to a variable with -> *%{secondary: secondary_color} = colors* --> key *secondary* on the map *colors* will be assigned to a variable *secondary_color*
* Updating maps is complicated. It basicly cannot be done, but the new map has to be created with properties of the previous map + updates. There are two ways, 1) using a function 2) ?
* Updating using a function: *Map* module is present in Elixir Docs which helps working with maps. Function to "update" a map would be a *put* function. *Map.put(map, key, value)*. Put can also update a map with new properties.
* Updating using special syntax: *%{ colors | primary: "blue" }*. Gotcha is that this can only be used when we are updating an existing property, it cannot be used to add a property.

## Lesson 12 - Keyword Lists

* Keyword list - a List of Tuples.
* Syntax: *[{:primary, "red"}, {:secondary, "green"}]* will return *[primary: "red", secondary: "green"]*
* Internally, Elixir considers these key value pairs as tuples.
* Shortened syntax can be used, so keyword lists can be declared as *[primary: "red", secondary: "green"]*.
* In Maps, keys cannot be duplicated and their values will be overwritten
* Keyword lists are most utilised in working with the library called Ecto (for working with databases).
* Square brackets [] can be omitted from the keyword list if it is passed in a function as the last argument. *User.find_where(where: user.age > 10, where: user.subscribed == true)*

## Lesson 13 - Structs

* Struct - a map that is used to store data in an Elixir app. They can be assigned default values. Struct will enforce that only properties that are defined on it can be used.
* Syntax - defined usually in a new module.

## Lesson 14 - Phoenix

* Framework whose job it is to behave as a web server. It can give clients HTML data, JSON and can open Web Sockets. It can store files of all types.
* How Phoenix handles incoming requests? -> I processes the request in a series of small tiny functions and pass the request on thru the pipeline.


