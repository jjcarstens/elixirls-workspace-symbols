defmodule MyDepTest do
  use ExUnit.Case
  doctest MyDep

  test "greets the world" do
    assert MyDep.hello() == :world
  end
end
