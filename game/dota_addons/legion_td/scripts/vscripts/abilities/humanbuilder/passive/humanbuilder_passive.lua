function humanbuilder_passive_start(keys)
    LinkLuaModifier("modifier_humanbuilder_passive_lua", "abilities/humanbuilder/passive/modifier_humanbuilder_passive_lua.lua", LUA_MODIFIER_MOTION_NONE)

    local ability = keys.ability
    local caster = keys.caster

    Timers:CreateTimer(function()

        id = caster:GetPlayerID()
        playerObj = Game:FindPlayerWithID(id)

        if not Game.gameState == GAMESTATE_PREPARATION then return 1 end
        
        --apply the modifiers to the hero as well for display


        caster:AddNewModifier(caster, ability, "modifier_humanbuilder_passive_lua", {})


        return 1 -- slowish
    end)
end
