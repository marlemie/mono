defmodule KV.Bucket do
  use Agent

  def start_link(opts) do
    Agent.start_link(fn -> %{} end, opts)
  end

  def get(id, key) do
    Agent.get(id, fn kv -> kv[key] end)
  end

  def put(id, key, value) do
    Agent.update(id, fn kv -> Map.put(kv, key, value) end)
  end
end
