defmodule MockInputAgentSafelyAutoGetListTest do
  use ExUnit.Case, async: false

  import Mock

  test_with_mock "get list item at 0", IO, [gets: fn(_) -> MockInputAgentSafelyAutoGetList.auto_get_list() end] do
    start_supervised MockInputAgentSafelyAutoGetList

    list = [1, "hello", 2, "world"]

    MockInputAgentSafelyAutoGetList.set_list(list)

    assert IO.gets("") == 1
    assert IO.gets("") == "hello"
    assert IO.gets("") == 2
    assert IO.gets("") == "world"
    assert IO.gets("") == "world"
    assert IO.gets("") == "world"
  end
end
