-----------------------------------
--
--
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.PERFECT_COUNTER)
    target:addMod(dsp.mod.VIT, jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.FOOTWORK_EFFECT)
    target:delMod(dsp.mod.VIT, jp_value)
end