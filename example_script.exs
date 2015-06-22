x0 = %{id: "0", geo: %{"latitude": 39.09592114, "longitude": -77.11553001}}
x1 = %{id: "1", geo: %{"latitude": 39.03313278, "longitude": -77.1952754}}
x2 = %{id: "2", geo: %{"latitude": 39.14925484, "longitude": -77.14953621}}
x3 = %{id: "3", geo: %{"latitude": 39.06503559, "longitude": -77.06304908}}
x4 = %{id: "4", geo: %{"latitude": 39.09289168, "longitude": -77.14641297}}
x5 = %{id: "5", geo: %{"latitude": 39.02942129, "longitude": -77.12011242}}
x6 = %{id: "6", geo: %{"latitude": 39.07606384, "longitude": -77.07467154}}
x7 = %{id: "7", geo: %{"latitude": 39.13778254, "longitude": -77.12320396}}
x8 = %{id: "8", geo: %{"latitude": 39.03401244, "longitude": -77.0892625}}
x9 = %{id: "9", geo: %{"latitude": 39.01579463, "longitude": -77.13129855}}
x10 = %{id: "10", geo: %{"latitude": 39.05846817, "longitude": -77.17733443}}
x11 = %{id: "11", geo: %{"latitude": 39.15467343, "longitude": -77.1544459}}
x12 = %{id: "12", geo: %{"latitude": 39.152105, "longitude": -77.15852003}}
x13 = %{id: "13", geo: %{"latitude": 39.06654413, "longitude": -77.1447554}}
x14 = %{id: "14", geo: %{"latitude": 39.12816695, "longitude": -77.13621539}}
x15 = %{id: "15", geo: %{"latitude": 39.04430644, "longitude": -77.18598655}}
x16 = %{id: "16", geo: %{"latitude": 39.09178155, "longitude": -77.21010117}}
x17 = %{id: "17", geo: %{"latitude": 39.08616956, "longitude": -77.2030507}}
x18 = %{id: "18", geo: %{"latitude": 39.04476154, "longitude": -77.09355943}}
x19 = %{id: "19", geo: %{"latitude": 39.05300044, "longitude": -77.16322465}}
x20 = %{id: "20", geo: %{"latitude": 39.084234, "longitude": -77.23151167}}
x21 = %{id: "21", geo: %{"latitude": 39.14580713, "longitude": -77.12782118}}
x22 = %{id: "22", geo: %{"latitude": 39.10055804, "longitude": -77.17990119}}
x23 = %{id: "23", geo: %{"latitude": 39.07444861, "longitude": -77.22350308}}
x24 = %{id: "24", geo: %{"latitude": 39.10866424, "longitude": -77.08430701}}
x25 = %{id: "25", geo: %{"latitude": 39.03171096, "longitude": -77.09335335}}
x26 = %{id: "26", geo: %{"latitude": 39.02910911, "longitude": -77.11057244}}
x27 = %{id: "27", geo: %{"latitude": 39.04480556, "longitude": -77.18825314}}
x28 = %{id: "28", geo: %{"latitude": 39.06016556, "longitude": -77.12275844}}
x29 = %{id: "29", geo: %{"latitude": 39.12254692, "longitude": -77.08762857}}
x30 = %{id: "30", geo: %{"latitude": 39.0590205, "longitude": -77.08495201}}
x31 = %{id: "31", geo: %{"latitude": 39.04986697, "longitude": -77.09448142}}
x32 = %{id: "32", geo: %{"latitude": 39.10843273, "longitude": -77.14296302}}
x33 = %{id: "33", geo: %{"latitude": 39.08319297, "longitude": -77.2015441}}
x34 = %{id: "34", geo: %{"latitude": 39.10259317, "longitude": -77.10532645}}
x35 = %{id: "35", geo: %{"latitude": 39.13177744, "longitude": -77.13481268}}
x36 = %{id: "36", geo: %{"latitude": 39.09165657, "longitude": -77.09669717}}
x37 = %{id: "37", geo: %{"latitude": 39.02813329, "longitude": -77.13954381}}
x38 = %{id: "38", geo: %{"latitude": 39.03226818, "longitude": -77.13450122}}
x39 = %{id: "39", geo: %{"latitude": 39.05174791, "longitude": -77.12273236}}
x40 = %{id: "40", geo: %{"latitude": 39.04827075, "longitude": -77.17499625}}
x41 = %{id: "41", geo: %{"latitude": 39.09008094, "longitude": -77.13948364}}
x42 = %{id: "42", geo: %{"latitude": 39.06046459, "longitude": -77.21030109}}
x43 = %{id: "43", geo: %{"latitude": 39.07683854, "longitude": -77.19318077}}
x44 = %{id: "44", geo: %{"latitude": 39.10404027, "longitude": -77.19997028}}
x45 = %{id: "45", geo: %{"latitude": 39.10724443, "longitude": -77.21310436}}
x46 = %{id: "46", geo: %{"latitude": 39.02970636, "longitude": -77.18409977}}
x47 = %{id: "47", geo: %{"latitude": 39.14813796, "longitude": -77.12559145}}
x48 = %{id: "48", geo: %{"latitude": 39.08493796, "longitude": -77.23985286}}
x49 = %{id: "49", geo: %{"latitude": 39.08820559, "longitude": -77.15887471}}

x_all = [x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49]

agent = NestedMap.start
NestedMap.inspect(agent)

NestedMap.combinator(agent, x_all)