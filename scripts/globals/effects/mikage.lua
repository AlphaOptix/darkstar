-----------------------------------
--
--
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.MIKAGE_EFFECT)
    target:addMod(dsp.mod.ATT, 3 * jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.MIKAGE_EFFECT)
    target:delMod(dsp.mod.ATT, 3 * jp_value)
end