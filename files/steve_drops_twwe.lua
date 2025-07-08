dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bitfield, damage_message, entity_thats_responsible, drop_items )
    if not GameHasFlagRun("PERK_PICKED_" .. perk_id_) then
        local entity_id = GetUpdatedEntityID()
        local x, y = EntityGetTransform( entity_id )

        local players = EntityGetWithTag( "player_unit" )
        local perk_id = "EDIT_WANDS_EVERYWHERE"
        local perk = perk_spawn(x, y, perk_id, true)
        ("steve_drops_twwe mod: Spawning perk " .. perk_id)

        if ( #players > 0 ) then
            local player_id = players[1]
            perk_pickup(perk, player_id, perk_id, false, false)
        end

    end
end