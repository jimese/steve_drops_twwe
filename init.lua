local nxml = dofile_once("mods/steve_drops_twwe/files/lib/nxml.lua")
local content = ModTextFileGetContent("data/entities/animals/necromancer_shop.xml")
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
    <LuaComponent
        script_death="mods/steve_drops_twwe/files/steve_drops_twwe.lua"
        >
    </LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/necromancer_shop.xml", tostring(xml))