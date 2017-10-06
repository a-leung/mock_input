defmodule MockInputAgentGetSet do
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
end
