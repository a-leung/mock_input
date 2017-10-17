defmodule MockInputAgentAutoGetListTest do
  use ExUnit.Case, async: false

  import Mock

  test_with_mock "get list item at 0", IO, [gets: fn(_) -> MockInputAgentAutoGetList.auto_get_list() end] do
    start_supervised MockInputAgentAutoGetList

    list = [1, "hello", 2, "world"]

    MockInputAgentAutoGetList.set_list(list)

    assert IO.gets("") == 1
    assert IO.gets("") == "hello"
    assert IO.gets("") == 2
    assert IO.gets("") == "world"
  end
end
