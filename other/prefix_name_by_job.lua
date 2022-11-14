// Linventif Prefix Name by Job
// License : CC BY-SA 4.0
// https://creativecommons.org/licenses/by-sa/4.0/
// Join the Discord : https://linventif.fr/discord

local prefix = {
    ["TEAM_MEDIC"] = "MED",
    ["TEAM_DIRECTEUR"] = "DIR"
}

hook.Add("PlayerSpawn", "Linventif_Prefix_Name", function(ply)
    if prefix[team.GetName(ply:Team())] then
        local name = prefix[team.GetName(ply:Team())] .. " " .. ply:Nick()
        ply:SetName(name)
    end
end)