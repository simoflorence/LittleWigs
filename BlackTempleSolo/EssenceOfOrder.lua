
--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Essence of Order", 919)
mod:RegisterEnableMob(68151)

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale("enUS", true)
if L then

end
L = mod:GetLocale()

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {134225, 134234, "bosskill"}
end

function mod:OnBossEnable()
	self:Log("SPELL_CAST_START", "Hellfire", 134225)
	self:Log("SPELL_CAST_START", "Spellflame", 134234)

	self:Death("Win", 68151)
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:Hellfire(args)
	self:Message(args.spellId, "Urgent", "Long", CL["cast"]:format(args.spellName))
	self:Bar(args.spellId, 6)
end

function mod:Spellflame()
	self:Message(args.spellId, "Attention", "Alert", CL["cast"]:format(args.spellName))
	self:CDBar(args.spellId, 10)
end

