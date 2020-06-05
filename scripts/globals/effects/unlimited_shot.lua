-----------------------------------
--
--
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.UNLIMITED_SHOT_EFFECT)
    target:addMod(dsp.mod.ENMITY, -2 * jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.UNLIMITED_SHOT_EFFECT)
    target:delMod(dsp.mod.ENMITY, -2 * jp_value)
end