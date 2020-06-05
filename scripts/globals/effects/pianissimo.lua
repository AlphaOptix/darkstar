-----------------------------------
--
--
--
-----------------------------------

function onEffectGain(target,effect)
    local jp_value = caster:getJobPointValue(dsp.jp.PIANISSIMO_EFFECT)
    target:addMod(dsp.mod.SONG_SPELLCASTING_TIME, jp_value * 2)
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    local jp_value = caster:getJobPointValue(dsp.jp.PIANISSIMO_EFFECT)
    target:delMod(dsp.mod.SONG_SPELLCASTING_TIME, jp_value * 2)
end