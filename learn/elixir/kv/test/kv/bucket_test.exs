defmodule Kv.BucketTest do
  use ExUnit.Case, async: true

  test "stores values by key on a named process", config do
    name = config.test
    {:ok, _} = KV.Bucket.start_link(name: name)
    assert KV.Bucket.get(name, "milk") == nil

    KV.Bucket.put(name, "milk", 3)
    assert KV.Bucket.get(name, "milk") == 3
  end

  test "delete value, get value at time of deletion", config do
    name = config.test
    {:ok, _} = KV.Bucket.start_link(name: name)

    KV.Bucket.put(name, "milk", 3)

    assert KV.Bucket.delete(name, "milk") == 3
    assert KV.Bucket.get(name, "milk") == nil
  end
end
