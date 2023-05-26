script.on_init(function()
   script.on_event(defines.events.on_chunk_generated, regulateOil)
end)

function regulateOil(e)

    if(e == nil) then
      return 0
    end

    local baseDeepOilRemovalChance = 0.92 --- yes, minimum amount of pffshore oil removed is 92%. its comical how much there is
    local landOilNerfRate = 0.5

    local surface = e.surface
    local area = e.area

    local vanilla_deposits = surface.find_entities_filtered{area=area, name="crude-oil"}
    local deep_oil = surface.find_entities_filtered{area=area, name="deep_oil"}
    local chanceToDestroyDeepOil = 0

    if(surface.map_gen_settings.autoplace_controls) then
      chanceToDestroyDeepOil = baseDeepOilRemovalChance - math.abs(((1 - surface.map_gen_settings.autoplace_controls["deep_oil"].frequency) * 0.1))
      if chanceToDestroyDeepOil <= 0 then chanceToDestroyDeepOil = 0 end
      if chanceToDestroyDeepOil >= 1 then chanceToDestroyDeepOil = 0.99 end
    end

  --  reduce frequency of cargo ship's deep oil spawns, otherwise adjust by control amount
    for _, deposit in pairs(deep_oil) do
      if(math.random() <= chanceToDestroyDeepOil) then
        deposit.destroy()
      else
        deposit.amount = deposit.amount * surface.map_gen_settings.autoplace_controls["deep_oil"].size
      end
    end

    --  nerf land oil abundance
      for _, deposit in pairs(vanilla_deposits) do
        deposit.amount = deposit.amount * landOilNerfRate
      end
    return count
end

--  add fuel barrels as jetpack fuel
function get_jetpack_fuels()
    local fuel_list = 
    {
	    ["crude-oil-barrel"] = 1.0,
	    ["light-oil-barrel"] = 1.0,
	    ["heavy-oil-barrel"] = 1.0,
	    ["petroleum-gas-barrel"] = 1.0,
	    ["diesel-fuel-barrel"] = 1.0,
    }
    return fuel_list
end

remote.add_interface("lotus-jetpack-fuels", { jetpack_fuels = get_jetpack_fuels })