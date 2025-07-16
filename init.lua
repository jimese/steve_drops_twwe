local nxml = dofile_once("mods/steve_drops_twwe/files/lib/nxml.lua")
local file_target = "data/entities/animals/necromancer_shop.xml"
local content = ModTextFileGetContent(file_target)
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
    <LuaComponent
        script_death="mods/steve_drops_twwe/files/steve_drops_twwe.lua"
        >
    </LuaComponent>
]]))
ModTextFileSetContent(file_target, tostring(xml))