-----------------------------------
--
--    dsp.effect.VELOCITY_SHOT
--
-----------------------------------
require("scripts/globals/status")
function onEffectGain(target, effect)
    local jp_value = target:getJobPointValue(dsp.jp.VELOCITY_SHOT_EFFECT)
    target:addMod(dsp.mod.RATT, jp_value * 2)
    target:addMod(dsp.mod.ATTP, -15)
    target:addMod(dsp.mod.HASTE_ABILITY, -1500)
    target:addMod(dsp.mod.RATTP, 15)
    target:addMod(dsp.mod.RANGED_DELAYP, -15 - target:getMod(dsp.mod.VELOCITY_SHOT_DELAY))
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    local jp_value = target:getJobPointValue(dsp.jp.VELOCITY_SHOT_EFFECT)
    target:delMod(dsp.mod.RATT, jp_value * 2)
    target:delMod(dsp.mod.ATTP, -15)
    target:delMod(dsp.mod.HASTE_ABILITY, -1500)
    target:delMod(dsp.mod.RATTP, 15)
    target:delMod(dsp.mod.RANGED_DELAYP, -15 - target:getMod(dsp.mod.VELOCITY_SHOT_DELAY))
end
