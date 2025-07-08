dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bitfield, damage_message, entity_thats_responsible, drop_items )
    local perk_id = "EDIT_WANDS_EVERYWHERE"

    if not GameHasFlagRun("PERK_PICKED_" .. perk_id) then
        local entity_id = GetUpdatedEntityID()
        local x, y = EntityGetTransform( entity_id )
        local players = EntityGetWithTag( "player_unit" )

        print("steve_drops_twwe mod: Spawning perk " .. perk_id)
        local perk = perk_spawn(x, y, perk_id, true)
        

        if ( #players > 0 ) then
            local player_id = players[1]
            perk_pickup(perk, player_id, perk_id, false, false)
        end
    else
        print("steve_drops_twwe mod: Perk already picked, not spawning again.")
    end

end