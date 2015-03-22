TROUBLEMAKER = {}
TROUBLEMAKER.version = 0.1

    ZO_CreateStringId("SI_BINDING_NAME_TROUBLEMAKER", "Troublemaker")

local function Troublemaker()
	local before = GetSetting(SETTING_TYPE_COMBAT, COMBAT_SETTING_PREVENT_ATTACKING_INNOCENTS)
	SetSetting(SETTING_TYPE_COMBAT, COMBAT_SETTING_PREVENT_ATTACKING_INNOCENTS, 1 - before)
end

SLASH_COMMANDS["/trouble"] = Troublemaker
