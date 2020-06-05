-----------------------------------
--
-- dsp.effect.AGGRESSOR
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.AGGRESSOR_EFFECT)

    target:addMod(dsp.mod.RACC, effect:getPower() + jp_value)
    target:addMod(dsp.mod.ACC,25 + jp_value)
    target:addMod(dsp.mod.EVA,-25)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.AGGRESSOR_EFFECT)

    target:delMod(dsp.mod.RACC, effect:getPower() + jp_value)
    target:delMod(dsp.mod.ACC,25 + jp_value)
    target:delMod(dsp.mod.EVA,-25)
end