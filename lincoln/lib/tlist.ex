defmodule Lincoln.TList do
  @moduledoc """
  Documentation for `TList`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TList.hello()
      :world

  """
  def link(tlist, value) do
    { value, tlist }
  end

  def empty do
    {}
  end

  def sum({}) do
    0
  end

  def sum({ value, tlist }) do
    value + sum(tlist)
  end
end
