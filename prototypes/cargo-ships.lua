local cargo_capacity = settings.startup["cargo_ship_capacity"].value
local tanker_capacity = settings.startup["tanker_ship_capacity"].value * 1000

data.raw["cargo-wagon"]["cargo_ship"].inventory_size = cargo_capacity
data.raw["fluid-wagon"]["oil_tanker"].inventory_size = tanker_capacity

-- Hide floating pole (copied from Freight Forwarding)
table.insert(data.raw["electric-pole"]["floating-electric-pole"].flags, "hidden")
table.insert(data.raw["item"]["floating-electric-pole"].flags, "hidden")
data.raw["recipe"]["floating-electric-pole"].hidden = true
data.raw["technology"]["oversea-energy-distribution"].hidden = true