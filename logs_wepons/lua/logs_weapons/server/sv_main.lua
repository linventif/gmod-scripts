hook.Add( "PlayerSwitchWeapon", "WeaponSwitchExample", function( ply, oldWeapon, newWeapon )
    if weapon_trigger[newWeapon:GetClass()] then
        RunConsoleCommand("say", "/me sort un.e " .. newWeapon:GetClass())
    end
end)