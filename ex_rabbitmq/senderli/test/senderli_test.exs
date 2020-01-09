defmodule SenderliTest do
  use ExUnit.Case
  doctest Senderli

  test "greets the world" do
    assert Senderli.hello() == :world
  end
end
