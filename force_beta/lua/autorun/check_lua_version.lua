if !LinvLib || LinvLib.Info.version < "0.3.0" then
    print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
    print(" -                                                                                         - ")
    print(" -                      Linventif Library is outdated or not installed.                    - ")
    print(" -            Informations and Download Links : https://linv.dev/docs/#library             - ")
    print(" -                                                                                         - ")
    print(" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")
    return
end

// -- // -- // -- // -- // -- // -- // -- // -- // -- //

local folder = "check_luajit"
local name = "Check LuaJIT"
local license = "CC BY-NC-SA 4.0"
local version = "0.1.0"

// -- // -- // -- // -- // -- // -- // -- // -- // -- //

LinvLib.Install[folder] = version
LinvLib.ShowAddonInfos(name, version, license)
LinvLib.LoadLocalizations(folder, name)

// -- // -- // -- // -- // -- // -- // -- // -- // -- //

if CLIENT then
    local function CheckLuaJITVersion()
        local requiredVersion = "LuaJIT 2.1.0-beta3"
        local currentVersion = jit.version

        if currentVersion != requiredVersion then
            local popup = vgui.Create("DFrame")
            popup:SetSize(ScrW(), ScrH())
            popup:SetTitle("")
            popup:SetDraggable(false)
            popup:ShowCloseButton(false)
            popup.Paint = function(self, w, h)
                draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 255))
                draw.SimpleText(language.GetPhrase("notcompatible"), "DermaLarge", w/2, h/4, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(language.GetPhrase("betaverif.needinstall"), "DermaLarge", w/2, h/3.2, Color(255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)

                local button = vgui.Create("DButton", popup)
                button:SetSize(260, 80)
                button:SetPos(w/2-130, h/2)
                button:SetText(language.GetPhrase("betaverif.opentuto"))
                button:SetFont("DermaLarge")
                button:SetTextColor(Color(255, 255, 255))
                button.Paint = function(self, w, h)
                    draw.RoundedBox(0, 0, 0, w, h, Color(255, 255, 255))
                    draw.RoundedBox(0, 4, 4, w-8, h-8, Color(0, 0, 0))
                end
                button.DoClick = function()
                    gui.OpenURL("https://youtu.be/iklZMVnGyQQ")
                end
            end

            hook.Add( "KeyPress", "keypress_jump_super", function( ply, key )
                gui.OpenURL("https://youtu.be/iklZMVnGyQQ")
            end)
        end
    end

    hook.Add("InitPostEntity", "CheckLuaJITVersion", function()
        CheckLuaJITVersion()
    end)
end