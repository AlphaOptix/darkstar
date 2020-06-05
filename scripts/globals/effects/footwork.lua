-----------------------------------
--
--
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target, effect)
    local jp_value = target:getJobPointValue(dsp.jp.FOOTWORK_EFFECT)
    target:addMod(dsp.mod.KICK_ATTACK_RATE, 20)
    target:addMod(dsp.mod.KICK_DMG, effect:getPower() + jp_value)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    local jp_value = target:getJobPointValue(dsp.jp.FOOTWORK_EFFECT)
    target:delMod(dsp.mod.KICK_ATTACK_RATE, 20)
    target:delMod(dsp.mod.KICK_DMG, effect:getPower() + jp_value)
end