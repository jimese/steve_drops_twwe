dofile("data/scripts/lib/mod_settings.lua")

function mod_setting_change_callback( mod_id, gui, in_main_menu, setting, old_value, new_value  )
	print( tostring(new_value) )
end

local mod_id = "steve_drops_twwe"
mod_settings_version = 1





mod_settings = 
{
    {
        id = "scott_instead",
        ui_name = "Scott Drops TWWE instead:",
        ui_description = "Scott drops the Tinker With Wands Everywhere perk. Steve no longer drops the perk.",
        value_default = false,
        scope = MOD_SETTING_SCOPE_RUNTIME,
    }

}

function ModSettingsUpdate( init_scope )
	local old_version = mod_settings_get_version( mod_id ) -- This can be used to migrate some settings between mod versions.
	mod_settings_update( mod_id, mod_settings, init_scope )
end

function ModSettingsGuiCount()
	return mod_settings_gui_count( mod_id, mod_settings )
end

function ModSettingsGui( gui, in_main_menu )
	mod_settings_gui( mod_id, mod_settings, gui, in_main_menu )

end