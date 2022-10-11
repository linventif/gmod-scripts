local MODULE = GAS.Logging:MODULE()
MODULE.Category = "Linventif"
MODULE.Name = "Weapons"
MODULE.Colour = Color(255,110,0)

MODULE:Hook("logs_weapons", "logs_weps", function(ply, weapon)
    MODULE:Log(Learn_Skills.Language.Logs_Learn, GAS.Logging:FormatPlayer(teacher), GAS.Logging:FormatEntity(weapon), GAS.Logging:FormatPlayer(student), GAS.Logging:Highlight(time))
end)

GAS.Logging:AddModule(MODULE)