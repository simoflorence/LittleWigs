if not BigWigsLoader.isBeta then return end
--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("The Underkeep Trash", 2690)
if not mod then return end
mod.displayName = CL.trash
mod:RegisterEnableMob(
)

--------------------------------------------------------------------------------
-- Localization
--

--local L = mod:GetLocale()
--if L then
--end

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
	}, {
	}
end

function mod:OnBossEnable()
end

--------------------------------------------------------------------------------
-- Event Handlers
--