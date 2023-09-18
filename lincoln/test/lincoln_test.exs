defmodule LincolnTest do
  use ExUnit.Case
  doctest Lincoln

  test "greets the world" do
    assert Lincoln.hello() == :world
  end
end
