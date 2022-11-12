// Linventif Props Limit
// License : CC BY-SA 4.0
// https://creativecommons.org/licenses/by-sa/4.0/
// Join the Discord : https://linventif.fr/discord

// Seletct de limit of the props per group (-1 = unlimited)
local limit = {
    ["superadmin"] = -1,
    ["admin"] = 60,
    ["moderator"] = 60,
    ["user"] = 30
}

local lang = "french" // french, english, russian, spanish

local langs = {
    ["french"] = {
        ["name"] = "Limite de Pros : ",
        ["text"] = "Vous avez atteint la limite de props que vous pouvez poser.",
    },
    ["english"] = {
        ["name"] = "Props Limit : ",
        ["text"] = "You have reached the limit of props you can spawn.",
    },
    ["russian"] = {
        ["name"] = "Лимит пропов : ",
        ["text"] = "Вы достигли лимита пропов, которые вы можете спавнить.",
    },
    ["spanish"] = {
        ["name"] = "Límite de Props : ",
        ["text"] = "Has alcanzado el límite de props que puedes crear.",
    }
}

hook.Add("PlayerSpawnProp", "props_limit", function(ply, model)
    if !limit[ply:GetUserGroup()] then return end
    if ply:GetCount("props") >= limit[ply:GetUserGroup()] && limit[ply:GetUserGroup()] != -1 then
        ply:ChatPrint(langs[lang].name .. langs[lang].text)
        return false
    end
end)

hook.Add("PlayerInitialSpawn", "props_limit", function(ply)
    ply:SetNWInt("props_max", limit[ply:GetUserGroup()])
end)