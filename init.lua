
local modpath = minetest.get_modpath("wrench")
local S = minetest.get_translator("wrench")

wrench = {
	translator = S,
	plus = true,
	registered_nodes = {},
	blacklisted_items = {},
	META_TYPE_FLOAT = 1,
	META_TYPE_STRING = 2,
	META_TYPE_INT = 3,
}

dofile(modpath.."/legacy.lua")
dofile(modpath.."/functions.lua")
dofile(modpath.."/tool.lua")
dofile(modpath.."/api.lua")

local mods = {
	"3d_armor_stand",
	"bees",
	"biofuel",
	"bones",
	"connected_chests",
	"default",
	"digilines",
	"digtron",
	"drawers",
	"mesecons",
	"mobs",
	"more_chests",
	"pipeworks",
	"technic",
	"technic_chests",
	"technic_cnc",
	"vessels",
	"xdecor",
}

for _, mod in pairs(mods) do
	if minetest.get_modpath(mod) then
		dofile(modpath.."/nodes/"..mod..".lua")
	end
end

if minetest.settings:get_bool("wrench.enable_debug", false) then
	dofile(modpath.."/debug.lua")
end
