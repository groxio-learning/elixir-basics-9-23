defmodule Life.Grid do
  alias Life.Cell

  @width 5
  @height 5

  def random do
    for(r <- 1..@height, c <- 1..@width, do: {r, c})
    |> Enum.shuffle()
    |> Enum.take(round(@width * @height / 2))
    |> MapSet.new()
  end

  def repeater do
    for r <- [3], c <- 2..4, into: MapSet.new(), do: {r, c}
  end

  def evolve(grid) do
    for r <- 1..@height,
        c <- 1..@width,
        Cell.alive?(Cell.new(grid, {r, c}), neighbor_count(grid, {r, c})),
        into: MapSet.new() do
      {r, c}
    end
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
        "_"
    end
  end

  def neighbor_count(grid, {r, c}) do
    for(
      br <- (r - 1)..(r + 1),
      bc <- (c - 1)..(c + 1),
      {br, bc} != {r, c},
      into: MapSet.new(),
      do: {br, bc}
    )
    |> MapSet.intersection(grid)
    |> MapSet.size()
  end
end
