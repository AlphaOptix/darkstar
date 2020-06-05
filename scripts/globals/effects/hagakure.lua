-----------------------------------
--
--     dsp.effect.HAGAKURE
--
-----------------------------------

require("scripts/globals/status")

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.HAGAKURE_EFFECT)
    target:addMod(dsp.mod.SAVETP,400)
    target:addMod(dsp.mod.TP_BONUS,1000 + (jp_value * 10))
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.HAGAKURE_EFFECT)
    target:delMod(dsp.mod.SAVETP,400)
    target:delMod(dsp.mod.TP_BONUS,1000 + (jp_value * 10))
end
