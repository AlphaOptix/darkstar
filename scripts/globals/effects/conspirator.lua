-----------------------------------
--
-- dsp.effect.CONSPIRATOR
--
-----------------------------------
require("scripts/globals/status")

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.CONSPIRATOR_EFFECT)
    target:addMod(dsp.mod.SUBTLE_BLOW, effect:getPower())
    target:addMod(dsp.mod.ACC, effect:getSubPower() + jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.CONSPIRATOR_EFFECT)
    target:delMod(dsp.mod.SUBTLE_BLOW, effect:getPower())
    target:delMod(dsp.mod.ACC, effect:getSubPower() + jp_value)
end
