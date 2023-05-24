data:extend({
	{
        type = "autoplace-control",
        category = "resource",
        name = "deep_oil",
        localised_name = {"", "[entity=deep_oil] ", {"entity-name.deep_oil"}},
        richness = false, 
        frequency = true,
        size = true, --- this cant be removed so we have to use size for richness
        order = "d-e"
	},
})

--- re-call SchallOilFuel function to add KS Power Diesel Fuel as burnable barrel fuel. below code is almost all just SchallOilFuel, calling to add properties to planes which are ignored by the default "chemical" fuel category check

local OFlib = require("__SchallOilFuel__.lib.OFlib")
local cfg1 = require("__SchallOilFuel__.config.config-1")
local dr = data.raw
local drf = dr.fluid
local dri = dr.item

local function fuel_settings_apply(name, specs)
  -- Fluid part
  if specs.fluid then
    local fluid = drf[specs.fluid.name]
    if fluid then
      for k, v in pairs(specs.common) do
        fluid[k] = v
      end
      fluid.fuel_value = specs.fuel_value
      if cfg1.fuel_PU_rebalance then fluid.emissions_multiplier = specs.fuel_emissions_multiplier or 1 end
    end
  end
  -- Item part
  if specs.item then
    local item = dri[specs.item.name]
    if item then
      for k, v in pairs(specs.common) do
        item[k] = v
      end
      item.fuel_value = OFlib.string_multiply_values(specs.fuel_value, specs.item.barrel_volume or 1)
      if cfg1.fuel_PU_rebalance then item.fuel_emissions_multiplier = specs.fuel_emissions_multiplier or 1 end
      if specs.item.burnt_result then
        item.burnt_result = specs.item.burnt_result
        -- item.localised_description = OFlib.fuel_localised_description(specs.item.burnt_result)
      end
    end
  end
end

--- diesel fuel is rebalanced to be intended to have better energy storage than rocket fuel to encourage use in vehicles, but lacks the extra speed bonus rocket fuel has. nuclear fuel is just better still
--- AAI processed fuel is disabled by default as it doesn't have spent fuel while the barrel use in diesel is intended as an additiona logistic need. AAI fuel can simply be enabled in the settings if desired
new_fuel = {

   ["diesel-fuel"] = {
    fuel_value = "4MJ",
    fuel_emissions_multiplier = 0.75,
    common = {
      fuel_category = "chemical",
      fuel_acceleration_multiplier = 1.5,
      fuel_top_speed_multiplier = 1.1,
    },
    fluid = { name = "diesel-fuel" },
    item = { name = "diesel-fuel-barrel", barrel_volume = 50, burnt_result = "empty-barrel"},
  },
}

-- Add fuel settings
for name, specs in pairs(new_fuel) do
  fuel_settings_apply(name, specs)
end

for name, specs in pairs(new_fuel) do
  fuel_settings_apply(name, specs)
end

--  apply burner inventory to all cars (because planes get ignored by a check in SOF)
for name, v2 in pairs(dr["car"]) do
  local burner = v2.burner or v2.energy_source
  if burner then
    burner.burnt_inventory_size = burner.fuel_inventory_size
  end
end

