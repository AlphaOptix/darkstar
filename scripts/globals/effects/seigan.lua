-----------------------------------
--
--
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.SHARPSHOT_EFFECT)
    local counterRate = target:getMod(dsp.mod.ZANSHIN) * 0.25
    counterRate = math.min(math.max(0,counterRate), 25 + target:getMod(dsp.mod.HASSO_SEIGAN_ZANSHIN_CAP))
    
    target:addMod(dsp.mod.DEF, jp_value * 3)
    target:addMod(dsp.mod.COUNTER,counterRate)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.SHARPSHOT_EFFECT)
    local counterRate = target:getMod(dsp.mod.ZANSHIN * 0.25
    counterRate = math.min(math.max(0,counterRate), 25 + target:getMod(dsp.mod.HASSO_SEIGAN_ZANSHIN_CAP))
    
    target:delMod(dsp.mod.DEF, jp_value * 3)
    target:delMod(dsp.mod.COUNTER,counterRate)
end
