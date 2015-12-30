EXPORTS = {}

EXPORTS.Init = function( self )
	self:SetContextThink( "init_think", function()
		print ("ai_lieutenant.lua found")
		self:GetAbilityByIndex(2):SetLevel(1)
		self.aiThink = aiThinkStandardSkill
		self.CheckIfHasAggro = CheckIfHasAggro
		self.Skill = UseSkillOnTarget
		self.ability = self:GetAbilityByIndex(2)
		self.Unstuck = Unstuck
		self:SetContextThink( "ai_lieutenant.aiThink", Dynamic_Wrap( self, "aiThink" ), 0 )
	end, 0 )
end

return EXPORTS
