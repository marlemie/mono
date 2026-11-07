defmodule KV.Bucket do
  def start_link(state) do
    Agent.start_link(fn -> %{} end)
  end

  def get(id, key) do
    Agent.get(id, fn kv -> kv[key] end)
  end

  def put(id, key, value) do
    Agent.update(id, fn kv -> Map.put(kv, key, value) end)
  end
end
