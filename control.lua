script.on_init(function()
   script.on_event(defines.events.on_chunk_generated, destroyOil)
end)

function destroyOil(e)

  if(next(e) == not nil) then
    local surface = e.surface
    local area = e.area

    local vanilla_deposits = surface.find_entities_filtered{area=area, name="crude-oil"}
    local deep_oil = surface.find_entities_filtered{area=area, name="deep_oil"}

    if(surface.map_gen_settings.autoplace_controls) then

      local deepOilFrequency = surface.map_gen_settings.autoplace_controls["deep_oil"].frequency
      local chanceToDestroyDeepOil = 1 - ((1 - deepOilFrequency) * 0.1)
      if chanceToDestroyDeepOil <= 0 then chanceToDestroyDeepOil = 0 end
      if chanceToDestroyDeepOil >= 1 then chanceToDestroyDeepOil = 0.95 end
    end

  --  reduce frequency of cargo ship's deep oil spawns
    for _, deposit in pairs(deep_oil) do
      if(math.random() <= chanceToDestroyDeepOil) then
        deposit.destroy()
      end
    end

    --  nerf land oil abundance
      for _, deposit in pairs(vanilla_deposits) do
        deposit.amount = deposit.amount * 0.5
      end
    return count
  end
end