-----------------------------------
--
-- dsp.effect.TRICK_ATTACK
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.TRICK_ATTACK_EFFECT)
    target:addMod(dsp.mod.TRICK_ATK_AGI, jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.TRICK_ATTACK_EFFECT)
    target:delMod(dsp.mod.TRICK_ATK_AGI, jp_value)
end