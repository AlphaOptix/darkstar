-----------------------------------
-- Ability: Invincible
-- Grants immunity to all physical attacks.
-- Obtained: Paladin Level 1
-- Recast Time: 1:00:00
-- Duration: 0:00:30
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------

function onAbilityCheck(player,target,ability)
    local jp_value = player:getJobPointValue(dsp.jp.INVINCIBLE_EFFECT)
    ability:setVE(ability:getVE() + 100 * jp_value)
    return 0,0
end

function onUseAbility(player,target,ability)
    player:addStatusEffect(dsp.effect.INVINCIBLE,1,0,30)
end