defmodule MockInputSimple2 do
  use ExUnit.Case, async: false

  import Mock

  test_with_mock "single output", IO, [gets: fn(x) -> x + 1 end] do
    assert IO.gets(1) == 2
    assert IO.gets(2) == 3
  end
end
