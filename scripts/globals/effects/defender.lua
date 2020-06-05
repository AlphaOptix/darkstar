-----------------------------------
--
-- dsp.effect.DEFENDER
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.DEFENDER_EFFECT)
    target:addMod(dsp.mod.DEF, jp_value * 3)
    target:addMod(dsp.mod.DEFP,25)
    target:addMod(dsp.mod.RATTP,-25)
    target:addMod(dsp.mod.ATTP,-25)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.DEFENDER_EFFECT)
    target:delMod(dsp.mod.DEF, jp_value * 3)
    target:delMod(dsp.mod.DEFP,25)
    target:delMod(dsp.mod.ATTP,-25)
    target:delMod(dsp.mod.RATTP,-25)
end
