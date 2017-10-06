defmodule MockInputAgentGetAndIncrementTest do
  use ExUnit.Case, async: false

  import Mock

  test_with_mock "single output", IO, [gets: fn(_) -> MockInputAgentGetAndIncrement.get() end] do
    start_supervised MockInputAgentGetAndIncrement

    assert IO.gets("") == 0
    assert IO.gets("") == 1
    assert IO.gets("") == 2
    assert IO.gets("") == 3
 end
end
