util.AddNetworkString("Weps_Restrict_Notif")

local function notif_to_ply(ply, notif, alert, time)
    local notif = {
        ["notif"] = notif,
        ["alert"] = alert,
        ["time"] = time
    }
    net.Start("Weps_Restrict_Notif")
    net.WriteString(util.TableToJSON())
    net.Send(ply)
end

hook.Add("PlayerCanPickupWeapon", "Weps_Restrict_Pickup", function(ply, weapon)
    if !Weps_Restrict.Config.Admin_Affected && Weps_Restrict.Config.Admin[ply:GetUserGroup()] then return true end
    local ply_weps_cat = Weps_Restrict.Config.Jobs[team.GetName(ply:Team())]
    for k, v in pairs(ply_weps_cat) do
        if Weps_Restrict.Config.Categories[k][weapon:GetClass()] then
            notif_to_ply(ply, Weps_Resrict.Language.Notif, 1, 4)
            return false
        end
    end
end)