defmodule TListTest do
  use ExUnit.Case
  alias Lincoln.TList  #, [{ :as, TList }] -> explicit implementation

  test "it returns a link" do
    assert TList.empty() |> TList.link(1) == { 1, {} }
  end

  test "returns an empty tuple" do
    assert TList.empty() == {}
  end
end
