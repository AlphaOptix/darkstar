-----------------------------------
--
--     dsp.effect.HUNDRED_FISTS
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.HUNDRED_FISTS_EFFECT)
    target:addMod(dsp.mod.ACC, jp_value * 2)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.HUNDRED_FISTS_EFFECT)
    target:delMod(dsp.mod.ACC, jp_value * 2)
end