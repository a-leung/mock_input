defmodule MockInputAgentAutoGetList do
  use Agent

  def start_link(_opts) do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def get() do
    Agent.get(__MODULE__, &Map.get(&1, "index")) || 0
  end

  def set(value) do
    Agent.update(__MODULE__, &Map.put(&1, "index", value))
  end

  def get_list() do
    Agent.get(__MODULE__, &Map.get(&1, "list")) || 0
  end

  def get_and_increment() do
    current_value = get()
    set(current_value + 1)
    current_value
  end

  def auto_get_list() do
    list = get_list()
    current_index = get_and_increment()
    Enum.at(list, current_index)
  end

  def set_list(list) do
    Agent.update(__MODULE__, &Map.put(&1, "list", list))
  end
end
