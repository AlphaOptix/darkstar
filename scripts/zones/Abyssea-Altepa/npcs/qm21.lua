-----------------------------------
-- Zone: Abyssea-Altepa
--  NPC: qm21 (???)
-- Spawns Dragua
-- !pos -400 0.150 127 218
-----------------------------------
require("scripts/globals/abyssea")
-----------------------------------

function onTrade(player,npc,trade)
    abysseaOnTrade(player,npc,trade)
end

function onTrigger(player,npc)
    abysseaOnTrigger(player,npc)
end

function onEventUpdate(player,csid,option)
    abysseaOnEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
    abysseaOnEventFinish(player,csid,option)
end
