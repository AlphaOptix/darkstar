-----------------------------------
--
-- dsp.effect.BERSERK
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local power = effect:getPower()
    local jp_value = target:getJobPointValue(dsp.jp.BERSERK_EFFECT)
    local jp_effect = jp_value * 2

    target:addMod(dsp.mod.ATTP, power)
    target:addMod(dsp.mod.RATTP, power)
    target:addMod(dsp.mod.DEFP, -power)
    target:addMod(dsp.mod.ATT, jp_effect)
    target:addMod(dsp.mod.RATT, jp_effect)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local power = effect:getPower()
    local jp_value = target:getJobPointValue(dsp.jp.BERSERK_EFFECT)
    local jp_effect = jp_value * 2
    
    target:delMod(dsp.mod.ATTP, power)
    target:delMod(dsp.mod.RATTP, power)
    target:delMod(dsp.mod.DEFP, -power)
    target:delMod(dsp.mod.ATT, jp_effect)
    target:delMod(dsp.mod.RATT, jp_effect)
end
