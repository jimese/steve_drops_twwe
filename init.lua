local nxml = dofile_once("mods/steve_drops_twwe/files/lib/nxml.lua")

local STEVE = "data/entities/animals/necromancer_shop.xml"
local SCOTT = "data/entities/animals/necromancer_super.xml"
local SCOTT_SETTING = "steve_drops_twwe.scott_instead"

local file_target
if ModSettingGet( SCOTT_SETTING ) then
    file_target = SCOTT
else
    file_target = STEVE
end

local content = ModTextFileGetContent(file_target)
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
    <LuaComponent
        script_death="mods/steve_drops_twwe/files/steve_drops_twwe.lua"
        >
    </LuaComponent>
]]))
ModTextFileSetContent(file_target, tostring(xml))