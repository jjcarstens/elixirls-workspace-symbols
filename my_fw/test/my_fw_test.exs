defmodule MyFwTest do
  use ExUnit.Case
  doctest MyFw

  test "greets the world" do
    assert MyFw.hello() == :world
  end
end
