-----------------------------------
--
-- dsp.effect.CAMOUFLAGE
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.CAMOUFLAGE_EFFECT)
    target:addMod(dsp.mod.ENMITY,-25)
    target:addMod(dsp.mod.CRITHITRATE,jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.CAMOUFLAGE_EFFECT)
    target:delMod(dsp.mod.ENMITY,-25)
    target:delMod(dsp.mod.CRITHITRATE,jp_value)
end
