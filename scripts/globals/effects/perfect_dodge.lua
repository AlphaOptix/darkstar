-----------------------------------
--
--     dsp.effect.PERFECT_DODGE
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.PERFECT_DODGE_EFFECT)
    target:addMod(dsp.mod.MEVA, jp_value * 3)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.PERFECT_DODGE_EFFECT)
    target:delMod(dsp.mod.MEVA, jp_value * 3)
end