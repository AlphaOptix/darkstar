-----------------------------------
--
--
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.ENDARK_EFFECT)
    target:addMod(dsp.mod.ENSPELL,8)
    target:addMod(dsp.mod.ENSPELL_DMG,effect:getPower() + jp_value)
    target:addMod(dsp.mod.ATT,jp_value)
    target:addMod(dsp.mod.ACC,jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.ENDARK_EFFECT)
    target:setMod(dsp.mod.ENSPELL_DMG,0)
    target:setMod(dsp.mod.ENSPELL,0)
    target:delMod(dsp.mod.ATT, jp_value)
    target:delMod(dsp.mod.ACC, jp_value)
end