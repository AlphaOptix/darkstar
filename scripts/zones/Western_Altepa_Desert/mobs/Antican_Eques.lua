-----------------------------------
-- Area: Western Altepa Desert
--  MOB: Antican Eques
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 135, 2, dsp.regime.type.FIELDS)
end;
