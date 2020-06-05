-----------------------------------
--
--     dsp.effect.SNEAK_ATTACK
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.SNEAK_ATTACK_EFFECT)
    target:addMod(dsp.mod.SNEAK_ATK_DEX, jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.SNEAK_ATTACK_EFFECT)
    target:delMod(dsp.mod.SNEAK_ATK_DEX, jp_value)
end