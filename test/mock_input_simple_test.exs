defmodule MockInputSimple do
  use ExUnit.Case, async: false

  import Mock

  test_with_mock "single output", IO, [gets: fn(_) -> "1" end] do
    assert IO.gets("") == "1"
    assert IO.gets("") == "1"
  end
end
