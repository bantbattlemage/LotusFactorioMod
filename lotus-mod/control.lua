script.on_init(function()
   script.on_event(defines.events.on_chunk_generated, regulateOil)
end)

local baseDeepOilRemovalChance = 0.95 -- yep... remove 95% of offshore oil
local landOilNerfRate = 0.5

local random = nil

function regulateOil(e)

    if(e == nil) then
        return 0
    end

    if(e.surface == nil) then
        return 0
    end    

    if(e.surface.map_gen_settings.autoplace_controls == nil) then
        return 0
    end    

    if(e.surface.map_gen_settings.autoplace_controls["deep_oil"] == nil) then
        return 0
    end
    
    local surface = e.surface
    local area = e.area

    local vanilla_deposits = surface.find_entities_filtered{area=area, name="crude-oil"}
    local deep_oil = surface.find_entities_filtered{area=area, name="deep_oil"}
    local chanceToDestroyDeepOil = baseDeepOilRemovalChance - math.abs(surface.map_gen_settings.autoplace_controls["deep_oil"].frequency * 0.05)
    
    if chanceToDestroyDeepOil <= 0 then chanceToDestroyDeepOil = 0 end
    if chanceToDestroyDeepOil >= 1 then chanceToDestroyDeepOil = 0.99 end

    if(random == nil) then
        random = game.create_random_generator(e.surface.map_gen_settings.seed)
    end

    local r = random()

    --  reduce frequency of cargo ship's deep oil spawns, otherwise adjust by control amount
    for _, deposit in pairs(deep_oil) do
        if(r <= chanceToDestroyDeepOil) then
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