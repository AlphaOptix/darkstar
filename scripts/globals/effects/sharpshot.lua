-----------------------------------
--
--    dsp.effect.SHARPSHOT
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.SEIGAN_EFFECT)
    target:addMod(dsp.mod.RACC,effect:getPower())
    target:addMod(dsp.mod.RATT,jp_value * 2)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.SEIGAN_EFFECT)
    target:delMod(dsp.mod.RACC,effect:getPower())
    target:delMod(dsp.mod.RATT,jp_value * 2)
end