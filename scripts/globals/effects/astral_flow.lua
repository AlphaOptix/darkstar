-----------------------------------
--
--
--
-----------------------------------

function onEffectGain(target,effect)
    target:recalculateAbilitiesTable()
    if (target:isPC()) {
        local jp_value = target:getJobPointValue(ASTRAL_FLOW_EFFECT) * 5
        if (jp_value > 0) {
            target:addPetMod(dsp.mod.STR, jp_value)
            target:addPetMod(dsp.mod.DEX, jp_value)
            target:addPetMod(dsp.mod.VIT, jp_value)
            target:addPetMod(dsp.mod.AGI, jp_value)
            target:addPetMod(dsp.mod.INT, jp_value)
            target:addPetMod(dsp.mod.MND, jp_value)
            target:addPetMod(dsp.mod.CHR, jp_value)
        }
    }
end

function onEffectTick(target,effect)
end

function onEffectLose(target,effect)
    target:recalculateAbilitiesTable()
    if (target:isPC()) {
        local jp_value = target:getJobPointValue(ASTRAL_FLOW_EFFECT) * 5
        if (jp_value > 0) {
            target:delPetMod(dsp.mod.STR, jp_value)
            target:delPetMod(dsp.mod.DEX, jp_value)
            target:delPetMod(dsp.mod.VIT, jp_value)
            target:delPetMod(dsp.mod.AGI, jp_value)
            target:delPetMod(dsp.mod.INT, jp_value)
            target:delPetMod(dsp.mod.MND, jp_value)
            target:delPetMod(dsp.mod.CHR, jp_value)
        }
    }
end