-----------------------------------
-- Ability: Convert
-- Swaps current HP with MP.
-- Obtained: Red Mage Level 40
-- Recast Time: 10:00
-- Duration: Instant
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onAbilityCheck(player,target,ability)
    return 0,0
end

function onUseAbility(player,target,ability)
    local MP = player:getMP()
    local HP = player:getHP()
    local jp_value = player:getJobPointValue(dsp.jp.CONVERT_EFFECT)
    if MP > 0 then
        -- Murgleis sword augments Convert.
        if player:getMod(dsp.mod.AUGMENTS_CONVERT) > 0 and HP > player:getMaxHP()/2 then
            HP = HP * player:getMod(dsp.mod.AUGMENTS_CONVERT)
        end
        player:setHP(MP + (HP * (jp_value * 0.01)))
        player:setMP(HP)
    end
end
