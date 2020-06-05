-----------------------------------
--
--     dsp.effect.MEIKYO_SHISUI
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.MEIKYO_SHISUI_EFFECT)
    target:addMod(dsp.mod.SKILLCHAINDMG, 2 * jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.MEIKYO_SHISUI_EFFECT)
    target:delMod(dsp.mod.SKILLCHAINDMG, 2 * jp_value)
end