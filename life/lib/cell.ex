defmodule Life.Cell do
  def show(cell) do
    if cell do
      "x"
    else
      "_"
    end
  end

  def new(grid, cord) do
    MapSet.member?(grid, cord)
  end

  def alive?(_cell, neighbor_count) when neighbor_count < 2 or neighbor_count > 3 do
    false
  end

  def alive?(_cell, neighbor_count) when neighbor_count == 3 do
    true
  end

  def alive?(cell, neighbor_count) when neighbor_count == 2 do
    cell
  end
end
