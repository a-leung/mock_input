defmodule MockInputAgentGetSetTest do
  use ExUnit.Case, async: false

  import Mock

  test_with_mock "single output", IO, [gets: fn(_) -> MockInputAgentGetSet.get() end] do
    start_supervised MockInputAgentGetSet

    first_value = IO.gets("")
    assert first_value == 0

    MockInputAgentGetSet.set(5)

    second_value = IO.gets("")

    assert first_value != second_value
    assert second_value == 5
  end
end
