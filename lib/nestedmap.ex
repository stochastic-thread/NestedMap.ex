defmodule NestedMap do
	def start do
		{:ok, agent} = Agent.start_link fn -> HashDict.new end
	  agent
	end

	def insert(agent, a, b) do
	  dist = Compare.distance(a[:geo], b[:geo])
	  hd = Agent.get(agent, fn hashd -> hashd end)
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
	  # ha = hd |> HashDict.put a[:id], (HashDict.new |> HashDict.put b[:id], dist)
   #  hb = ha |> HashDict.put b[:id], (HashDict.new |> HashDict.put a[:id], dist)
    Agent.update(agent, fn hashd -> hb end)
    agent
  end

  def inspect(agent) do
    Agent.get agent, fn x -> x end
  end
end
