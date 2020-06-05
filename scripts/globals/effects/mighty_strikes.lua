-----------------------------------
--
--     dsp.effect.MIGHTY_STRIKES
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.MIGHTY_STRIKES_EFFECT)
    target:addMod(dsp.mod.CRITHITRATE,100)
    target:addMod(dsp.mod.ACC, jp_value * 2)
    target:addMod(dsp.mod.RACC, jp_value * 2)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.MIGHTY_STRIKES_EFFECT)
    target:addMod(dsp.mod.CRITHITRATE,-100)
    target:delMod(dsp.mod.ACC, jp_value * 2)
    target:delMod(dsp.mod.RACC, jp_value * 2)
end