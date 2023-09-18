defmodule Lincoln.MyList do
  @moduledoc """
  Documentation for `TList`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TList.hello()
      :world

  """
  def link(list, value) do
    [value | list]
  end

  def empty do
    []
  end

  def sum([]) do
    0
  end

  def sum([value | list]) do
    value + sum(list)
  end

  def total([], acc) do
    acc
  end

  def total([number | numbers], acc) do
    total(numbers, acc + number)
  end

  def count([]) do
    0
  end

  def count(list) do
    1 + count(tl(list))
  end
end

# Enum.reduce(1..6, &Kernel.+/2)
# 1,3,6,10,15,21

# MyList.total(1..3, 0)
# acc list
# 0 [1,2,3]
# 1 [2,3]
# 3 [3]
# 6 []
