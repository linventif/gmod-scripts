Weps_Restrict.Config = {}

Weps_Restrict.Config.Language = "french" // french or english
Weps_Restrict.Config.Admin_Affected = false

Weps_Restrict.Config.Admin = {
    ["superadmin"] = true,
    ["admin"] = true,
    ["moderator"] = true,
}

Weps_Restrict.Config.Categories = {
    ["Classic"] = {
        ["keys"] = true,
        ["weapon_physgun"] = true,
        ["gmod_tool"] = true,
        ["gmod_camera"] = true
    },
    ["Sniper"] = {
        ["weapon_ak47"] = true
    },
    ["Pistol"] = {
        ["weapon_pistol"] = true
    },
    ["Boom"] = {
        ["weapon_rpg"] = true
    }
}

Weps_Restrict.Config.Jobs = {
    ["Citizen"] = {
        ["Sniper"] = true,
        ["Pistol"] = true
    }
}