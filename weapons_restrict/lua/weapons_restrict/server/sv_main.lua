util.AddNetworkString("Weps_Restrict_Notif")

local function notif_to_ply(ply, notif, alert, time)
    local notif = {
        ["notif"] = notif,
        ["alert"] = alert,
        ["time"] = time
    }
    net.Start("Weps_Restrict_Notif")
    net.WriteString(util.TableToJSON(notif))
    net.Send(ply)
end

hook.Add("PlayerCanPickupWeapon", "Weps_Restrict_Pickup", function(ply, weapon)
    local ply_weps_cat = Weps_Restrict.Config.Jobs[team.GetName(ply:Team())]
    if not ply_weps_cat then return end
    if not Weps_Restrict.Config.Admin_Affected && Weps_Restrict.Config.Admin[ply:GetUserGroup()] then return end
    for k, v in pairs(ply_weps_cat) do
        if Weps_Restrict.Config.Categories[k][weapon:GetClass()] then
            notif_to_ply(ply, Weps_Restrict.Language.Notif, 1, 4)
            return false
        end
    end
end)