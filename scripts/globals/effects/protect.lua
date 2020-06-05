-----------------------------------
--
--     dsp.effect.PROTECT
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
   local power = effect:getPower();
   if target:hasMod(dsp.mod.PROTECT_EFFECT) then
      power = power * (target:getMod(dsp.mod.PROTECT_EFFECT) / 100)
  end

   target:addMod(dsp.mod.DEF,power)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
   local power = effect:getPower();
   if target:hasMod(dsp.mod.PROTECT_EFFECT) then
      power = power * (target:getMod(dsp.mod.PROTECT_EFFECT) / 100)
  end

   target:delMod(dsp.mod.DEF,power)
end