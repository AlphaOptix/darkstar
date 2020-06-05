-----------------------------------
--
--
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.DOUBLE_SHOT_EFFECT)
    target:addMod(dsp.mod.DOUBLE_SHOT_RATE, effect:getPower() + jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.DOUBLE_SHOT_EFFECT)
    target:delMod(dsp.mod.DOUBLE_SHOT_RATE, effect:getPower() + jp_value)
end