defmodule Life.Grid do
  @width 180
  @height 45

  def random do
    (for r <- 1..@height, c <- 1..@width, do: {r, c})
    |> Enum.shuffle
    |> Enum.take(round(180 * 45 / 2))
    |> MapSet.new
  end

  def repeater do
    for r <- [3], c <- 2..4, into: MapSet.new(), do: {r, c}
  end

  def generate(grid) do
    grid
  end

  def show(grid) do
    for r <- 1..@height, do: [show_row(grid, r), "\n"]
  end

  def show_row(grid, row_number) do
    for c <- 1..@width, do: show_cell(grid, {row_number, c})
  end

  def show_cell(grid, cell) do
    cond do
      MapSet.member?(grid, cell) ->
        "x"
      true ->
        "o"
    end
  end
end
