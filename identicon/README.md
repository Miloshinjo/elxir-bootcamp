# Identicon

Mini program that will generate identicon images.

* Identicon is a square 300x300px that contains 25 (5x5px) squares inside it. It colors some squares randomly to create an identicon image. All images should be mirrored on the center axis.
* Additional rule for this project: Each identicon will not be random, but will generate based on a string input. Aka, "Jane" will have this picture, "John" that, etc...

# Process

* String -> Compute MD5 hash of string -> List of numbers based on the string -> Pick color -> Build grid of squares -> Convert grid to an image -> Save image

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `identicon` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:identicon, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/identicon](https://hexdocs.pm/identicon).

