-----------------------------------
--
--
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.SOUL_VOICE_EFFECT)
    target:addMod(dsp.mod.SONG_SPELLCASTING_TIME, 2 * jp_value)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = target:getJobPointValue(dsp.jp.SOUL_VOICE_EFFECT)
    target:delMod(dsp.mod.SONG_SPELLCASTING_TIME, 2 * jp_value)
end