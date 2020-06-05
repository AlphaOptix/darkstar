-----------------------------------
-- dsp.effects.COUNTERSTANCE
-- DEF is removed in core as equip swaps can mess this up otherwise!
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.COUNTERSTANCE_EFFECT)
    target:addMod(dsp.mod.COUNTER,effect:getPower())
    target:addMod(dsp.mod.DEX, jp_value * 2 )
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.COUNTERSTANCE_EFFECT)
    target:delMod(dsp.mod.COUNTER,effect:getPower())
    target:delMod(dsp.mod.DEX, jp_value * 2)
end