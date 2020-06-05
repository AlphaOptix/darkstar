-----------------------------------
--
--     dsp.effect.FOCUS
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
   local jp_value = target:getJobPointValue(dsp.jp.FOCUS_EFFECT)
   target:addMod(dsp.mod.ACC,effect:getPower() + jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
   local jp_value = target:getJobPointValue(dsp.jp.FOCUS_EFFECT)
   target:delMod(dsp.mod.ACC,effect:getPower() + jp_value)
end