defmodule MockInputAgentGetSetListTest do
  use ExUnit.Case, async: false

  import Mock

  test_with_mock "single list output", IO, [gets: fn(_) -> MockInputAgentGetSetList.get_list() end] do
    start_supervised MockInputAgentGetSetList

    list = [1, "hello", 2, "world"]

    MockInputAgentGetSetList.set_list(list)

    assert IO.gets("") == list
  end
end
