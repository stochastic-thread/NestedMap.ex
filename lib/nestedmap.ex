defmodule NestedMap do
  def start do
    {:ok, agent} = Agent.start_link fn -> HashDict.new end
    agent
  end

  def insert(agent, a, b) do
    dist = Compare.distance(a[:geo], b[:geo])
    Agent.update(agent, fn hd -> 
      case HashDict.get hd, a[:id] do
        nil -> ha = hd |> HashDict.put a[:id], (HashDict.new |> HashDict.put b[:id], dist)
        a_exists -> 
          ha = hd |> HashDict.put a[:id], (a_exists |> HashDict.put b[:id], dist)
      end

      case HashDict.get ha, b[:id] do
        nil -> hb = ha |> HashDict.put b[:id], (HashDict.new |> HashDict.put a[:id], dist)
        b_exists -> 
          hb = ha |> HashDict.put b[:id], (b_exists |> HashDict.put a[:id], dist)
      end
    end)
  end

  def inspect(agent) do
    Agent.get agent, fn x -> x end
  end

  def combinator(agent, x_all) do
    x_all |> Enum.map fn(x) -> 
      index = (Enum.find_index x_all, fn(y) -> y == x end)
      (Enum.split x_all, index) |> Tuple.to_list |> hd |> Enum.map fn(n) -> NestedMap.insert(agent, x, n) end
    end
    agent
  end
end

