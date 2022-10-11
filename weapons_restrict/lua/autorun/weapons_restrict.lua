print(" ")
print(" ")
print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
print(" -                                                           - ")
print(" -                     Weapons Restrict                      - ")
print(" -                                                           - ")
print(" -                   Create by Linventif                     - ")
print(" -        Join my discord : https://dsc.linventif.fr         - ")
print(" -                                                           - ")
print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
print(" ")

local folder = "weapons_restrict"
local name = "Weapons Restrict"

Weps_Restrict = {}
Weps_Restrict.Version = 1

AddCSLuaFile(folder .. "/sh_config.lua")
include(folder .. "/sh_config.lua")
print("| " .. name .. " | File Load | addons/" .. folder .. "/lua/sh_config.lua")

AddCSLuaFile(folder .. "/languages/" .. string.lower(Weps_Restrict.Config.Language) .. ".lua")
include(folder .. "/languages/" .. string.lower(Weps_Restrict.Config.Language) .. ".lua")
print("| " .. name .. " | File Load | addons/" .. folder .. "/lua/" .. folder .. "/languages/" .. string.lower(Weps_Restrict.Config.Language) .. ".lua")

if SERVER then
	for k, v in ipairs(file.Find(folder .. "/server/*.lua", "LUA")) do
		include(folder .. "/server/" .. v)
        print("| " .. name .. " | File Load | addons/" .. folder .. "/lua/" .. folder .. "/server/" .. v)
	end

	for k, v in ipairs(file.Find(folder .. "/client/*.lua", "LUA")) do
        print("| " .. name .. " | File Load | addons/" .. folder .. "/lua/" .. folder .. "/client/" .. v)
		AddCSLuaFile(folder .. "/client/" .. v)
	end
else
	for k, v in ipairs(file.Find(folder .. "/server/*.lua", "LUA")) do
		include(folder .. "/server/" .. v)
        print("| " .. name .. " | File Load | addons/" .. folder .. "/lua/" .. folder .. "/server/" .. v)
	end

	for k, v in ipairs(file.Find(folder .. "/client/*.lua", "LUA")) do
		include(folder .. "/client/" .. v)
        print("| " .. name .. " | File Load | addons/" .. folder .. "/lua/" .. folder .. "/client/" .. v)
	end
end

print(" ")
print(" ")