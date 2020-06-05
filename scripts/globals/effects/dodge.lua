-----------------------------------
--
--     dsp.effect.DODGE
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.DODGE_EFFECT) * 2
    target:addMod(dsp.mod.EVA,effect:getPower() + jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.HUNDRED_FISTS_EFFECT) * 2
    target:delMod(dsp.mod.EVA,effect:getPower() + jp_value)
end