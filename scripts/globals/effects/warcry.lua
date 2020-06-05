-----------------------------------
--
--     dsp.effect.WARCRY
--
-- Notes:
-- Savagery TP bonus not cut in half like ffxclopedia says.
-- ffxiclopedia is wrong, bg wiki right. See link where testing was done.
-- http://www.bluegartr.com/threads/108199-Random-Facts-Thread-Other?p=5367464&viewfull=1#post5367464
-----------------------------------

require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.WARCRY_EFFECT)
    local jp_effect = jp_value * 3;

    target:addMod(dsp.mod.ATTP,effect:getPower())
    target:addMod(dsp.mod.TP_BONUS,effect:getSubPower())
    target:addMod(dsp.mod.ATT, jp_effect)
    target:addMod(dsp.mod.RATT, jp_effect)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.WARCRY_EFFECT)
    local jp_effect = jp_value * 3;
    
    target:delMod(dsp.mod.ATTP,effect:getPower())
    target:delMod(dsp.mod.TP_BONUS,effect:getSubPower())
    target:delMod(dsp.mod.ATT, jp_effect)
    target:delMod(dsp.mod.RATT, jp_effect)
end
