net.Receive("Weps_Restrict_Notif", function(len, ply)
    local notif = util.JSONToTable(net.ReadString())
    add.notification.AddLegacy(notif.notif, notif.alert, notif.time)
end)