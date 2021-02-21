defmodule NxTestTest do
  use ExUnit.Case
  doctest NxTest

  test "greets the world" do
    assert NxTest.hello() == :world
  end
end
