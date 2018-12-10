defmodule Identicon do

  alias Identicon.Image

  def main(input) do
    input
    |> hash_input
    |> pick_color
    |> build_grid
    |> filter_odd_squares
  #   |> build_pixel_map
  end

  # def build_pixel_map(%Image{grid: grid} = image) do
  # end

  def filter_odd_squares(%Image{grid: grid} = image) do
    grid = Enum.filter grid, fn({code, _index}) ->
      rem(code, 2) == 0 # rem - remainder, works like modulo in js.
    end

    %Image{image | grid: grid}
  end

  def build_grid(%Image{hex: hex} = image) do
    grid =
      hex
      |> Enum.chunk(3) # check the hex into lists of 3
      |> Enum.map(&mirror_row/1) # mirror all rows
      |> List.flatten # take a nested list and flatten all the values in it. (avoid lists within lists)
      |> Enum.with_index # give us the idea of an list index in our iterations. It will turn all elements into 2 element tuples, with second value being the index.

    %Image{image | grid: grid} # return a struct with all image props plus grid.
  end

  def mirror_row(row) do
    [first, second | _tail] = row

    row ++ [second, first]
  end

  def pick_color(%Image{hex: [r, g, b | _tail]} = image) do
    %Image{image | color: {r, g, b}}
  end

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Image{hex: hex}
  end
end
