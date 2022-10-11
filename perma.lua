

/*
net.Receive("sentro_perma", function(len, ply)
    local wep_take = util.JSONToTable(net.ReadString())
    local ply_weps = util.JSONToTable(ply:GetPData("sentro_perma"))
    for k, v in pairs(table.GetKeys(wep_take)) do
        if ply_weps[v] then
            if Sentro_Perma.Config.Special[v] then
                local func_special = Sentro_Perma.Config.Special[v]
                func_special(ply)
            else
                ply:Give(v)
            end
        end
    end
end)

hook.Add("canDropWeapon", "sentro_perma_can_drop", function(ply, weapon)
    if util.JSONToTable(ply:GetPData("sentro_perma")[weapon] then return false end
end)

hook.Add("PlayerLoadout", "sentro_perma_show", function(ply)
    if ply:IsValid() && !ply:IsBot() && ply:GetPData("sentro_perma") then
        net.Start("sentro_perma")
        net.WriteString(ply:GetPData("sentro_perma"))
        net.Send(ply)
    end
end)

hook.Add("sentro_perma_add", "sentro_perma_add", function(ply, wep)
    if ply:IsValid() && !ply:IsBot() then
        local ply_weps = util.JSONToTable(ply:GetPData("sentro_perma"))
        if ply_weps then
            ply_weps[wep] = true
            ply:SetPData("sentro_perma", util.TableToJSON(ply_weps))
        else
            ply:SetPData("sentro_perma", util.TableToJSON({[wep] = true}))
        end
    end
end)

hook.Add("sentro_perma_remove", "sentro_perma_remove", function(ply, wep)
    if (ply:IsValid() && !ply:IsBot()) then
        local ply_weps = util.JSONToTable(ply:GetPData("sentro_perma"))
        if ply_weps && ply_weps.[wep] then
            ply_weps[wep] = false
            ply:SetPData("sentro_perma", util.TableToJSON(ply_weps))
        end
    end
end)
*/