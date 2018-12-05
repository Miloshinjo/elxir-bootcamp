defmodule Cards do
  def create_deck do
    ["Ace", "Two", "Three"]
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end


##################### Lesson 1 - Basics ########################
# code is organized into modules of code (module is a collection of different methods and functions).
# convention is to use double-quotes in elixir code.
# "do" and "end" are like {} in javascript, defining a block of code.
# "def" stands for "define".
# opening the elixir shell: "iex -S mix".
##################### Lesson 2 - Passing arguments #############
# Cards.shuffle/0 === 'you called shuffle cards with 0 arguments'
# arity - number of arguments the function accepts
# Enum module is used for working with lists of data