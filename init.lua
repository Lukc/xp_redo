
local MP = minetest.get_modpath("xp_redo")
local has_ehlphabet_mod = minetest.get_modpath("ehlphabet")

xp_redo = {
	-- nametag display (player:set_nametag_attributes)
	disable_nametag = minetest.settings:get_bool("xp.display_nametag"),

	-- rank entity on top of player
	disable_hover_entity = minetest.settings:get_bool("xp.display_hover_entity"),

	hud = {
		posx = tonumber(minetest.settings:get("xp.hud.offsetx") or 0.8),
		posy = tonumber(minetest.settings:get("xp.hud.offsety") or 0.7)
	}
}

dofile(MP.."/ranks.lua")
dofile(MP.."/json.lua") --json export

if not xp_redo.disable_hover_entity then

	dofile(MP.."/entities.lua")
end

-- dofile(MP.."/trophies.lua")
dofile(MP.."/stats.lua")
dofile(MP.."/hud.lua")
dofile(MP.."/functions.lua")
dofile(MP.."/xpgate.lua")
dofile(MP.."/mobs.lua")
dofile(MP.."/highscore.lua")
dofile(MP.."/chatcmd.lua")
dofile(MP.."/builtin.lua")

if has_ehlphabet_mod then
	-- load highscore board
	dofile(MP.."/highscore_board.lua")
end


print("[OK] XP-Redo")
