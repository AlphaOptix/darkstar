-----------------------------------
--
--
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.BARRAGE_EFFECT)
    target:addMod(dsp.mod.RATT, jp_value * 3)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.BARRAGE_EFFECT)
    target:delMod(dsp.mod.RATT, jp_value * 3)
end