defmodule MockInputAgentGetSetList do
  use Agent

  def start_link(_opts) do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def get_list() do
    Agent.get(__MODULE__, &Map.get(&1, "list")) || [nil]
  end

  def set_list(value) do
    Agent.update(__MODULE__, &Map.put(&1, "list", value))
  end
end
