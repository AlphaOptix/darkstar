-----------------------------------
--
-- dsp.effect.CHAINSPELL
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.CHAINSPELL_EFFECT)
    target:addMod(dsp.mod.UFASTCAST,150)
    target:addMod(dsp.mod.MAGIC_DAMAGE, jp_value * 2)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.CHAINSPELL_EFFECT)
    target:delMod(dsp.mod.UFASTCAST,150)
    target:delMod(dsp.mod.MAGIC_DAMAGE, jp_value * 2)
end