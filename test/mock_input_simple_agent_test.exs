defmodule MockInputSimpleAgentTest do
  use ExUnit.Case, async: false

  import Mock

  test_with_mock "single output", IO, [gets: fn(_) -> MockInputSimpleAgent.get() end] do
    start_supervised MockInputSimpleAgent

    assert IO.gets("") == "1"
    assert IO.gets("") == "1"
  end
end
