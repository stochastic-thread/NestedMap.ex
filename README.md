NestedMap
===

```
a = %{id: "1", geo: %{"latitude": 123, "longitude": 76.9}}
b = %{id: "2", geo: %{"latitude": 122.8, "longitude": 76.878}}
c = %{id: "3", geo: %{"latitude": 123.1, "longitude": 76.9114}}
d = %{id: "4", geo: %{"latitude": 122.998, "longitude": 76.921}}

iex(1)> a = %{id: "1", geo: %{"latitude": 123, "longitude": 76.9}}
%{geo: %{latitude: 123, longitude: 76.9}, id: "1"}

iex(2)> b = %{id: "2", geo: %{"latitude": 122.8, "longitude": 76.878}}
%{geo: %{latitude: 122.8, longitude: 76.878}, id: "2"}

iex(3)> c = %{id: "3", geo: %{"latitude": 123.1, "longitude": 76.9114}}
%{geo: %{latitude: 123.1, longitude: 76.9114}, id: "3"}

iex(4)> d = %{id: "4", geo: %{"latitude": 122.998, "longitude": 76.921}}
%{geo: %{latitude: 122.998, longitude: 76.921}, id: "4"}

iex(5)> agent = NestedMap.start
#PID<0.103.0>

iex(6)> NestedMap.insert(agent, a, b)
#PID<0.103.0>

iex(7)> agent = NestedMap.insert(agent, a, b)
#PID<0.103.0>

iex(8)> NestedMap.inspect(agent)
#HashDict<[{"1", #HashDict<[{"2", 13.842642714311227}]>},
 {"2", #HashDict<[{"1", 13.842642714311227}]>}]>

iex(9)> agent = NestedMap.insert(agent, a, c)
#PID<0.103.0>

iex(10)> NestedMap.inspect(agent)
#HashDict<[{"3", #HashDict<[{"1", 6.922340083334671}]>},
 {"1", #HashDict<[{"3", 6.922340083334671}, {"2", 13.842642714311227}]>},
 {"2", #HashDict<[{"1", 13.842642714311227}]>}]>

iex(11)> agent = NestedMap.insert(agent, a, d)
#PID<0.103.0>

iex(12)> NestedMap.inspect(agent)
#HashDict<[{"4", #HashDict<[{"1", 0.8021808318872715}]>},
 {"3", #HashDict<[{"1", 6.922340083334671}]>},
 {"1",
  #HashDict<[{"4", 0.8021808318872715}, {"3", 6.922340083334671},
   {"2", 13.842642714311227}]>}, {"2", #HashDict<[{"1", 13.842642714311227}]>}]>

iex(13)> agent = NestedMap.insert(agent, c, d)
#PID<0.103.0>

iex(14)> agent = NestedMap.insert(agent, b, d)
#PID<0.103.0>

iex(15)> NestedMap.inspect(agent)
#HashDict<[{"4",
  #HashDict<[{"3", 7.056456862296712}, {"1", 0.8021808318872715},
   {"2", 13.77466309392474}]>},
 {"3", #HashDict<[{"4", 7.056456862296712}, {"1", 6.922340083334671}]>},
 {"1",
  #HashDict<[{"4", 0.8021808318872715}, {"3", 6.922340083334671},
   {"2", 13.842642714311227}]>},
 {"2", #HashDict<[{"4", 13.77466309392474}, {"1", 13.842642714311227}]>}]>

iex(16)> response = NestedMap.inspect(agent)
#HashDict<[{"4",
  #HashDict<[{"3", 7.056456862296712}, {"1", 0.8021808318872715},
   {"2", 13.77466309392474}]>},
 {"3", #HashDict<[{"4", 7.056456862296712}, {"1", 6.922340083334671}]>},
 {"1",
  #HashDict<[{"4", 0.8021808318872715}, {"3", 6.922340083334671},
   {"2", 13.842642714311227}]>},
 {"2", #HashDict<[{"4", 13.77466309392474}, {"1", 13.842642714311227}]>}]>

iex(17)> response
#HashDict<[{"4",
  #HashDict<[{"3", 7.056456862296712}, {"1", 0.8021808318872715},
   {"2", 13.77466309392474}]>},
 {"3", #HashDict<[{"4", 7.056456862296712}, {"1", 6.922340083334671}]>},
 {"1",
  #HashDict<[{"4", 0.8021808318872715}, {"3", 6.922340083334671},
   {"2", 13.842642714311227}]>},
 {"2", #HashDict<[{"4", 13.77466309392474}, {"1", 13.842642714311227}]>}]>

iex(18)> response["4"]
#HashDict<[{"3", 7.056456862296712}, {"1", 0.8021808318872715},
 {"2", 13.77466309392474}]>
```

This means you can quickly query for the distance 
between two users (by id, but as Strings unfortunately), like so:

```
iex(19)> response["4"]["3"]
7.056456862296712
```