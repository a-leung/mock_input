defmodule MockInputAgentGetListItemTest do
  use ExUnit.Case, async: false

  import Mock

  test_with_mock "get list item at 0", IO, [gets: fn(_) -> MockInputAgentGetListItem.get_list_item(0) end] do
    start_supervised MockInputAgentGetListItem

    list = [1, "hello", 2, "world"]

    MockInputAgentGetListItem.set_list(list)

    assert IO.gets("") == 1
  end

  test_with_mock "get list item at 1", IO, [gets: fn(_) -> MockInputAgentGetListItem.get_list_item(1) end] do
    start_supervised MockInputAgentGetListItem

    list = [1, "hello", 2, "world"]

    MockInputAgentGetListItem.set_list(list)

    assert IO.gets("") == "hello"
  end
end
