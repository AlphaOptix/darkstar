-----------------------------------
--
--
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.ENLIGHT_EFFECT)
    target:addMod(dsp.mod.ENSPELL,7)
    target:addMod(dsp.mod.ENSPELL_DMG,effect:getPower() + jp_value)
    target:addMod(dsp.mod.ACC, jp_value * 2)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.ENLIGHT_EFFECT)
    target:setMod(dsp.mod.ENSPELL_DMG,0)
    target:setMod(dsp.mod.ENSPELL,0)
    target:delMod(dsp.mod.ACC, jp_value * 2)
end