-----------------------------------
-- Area: Windurst Waters (S)
--   NPC: Nhel Urhahn
-- Type: Standard NPC
-- !pos -47.348 -4.499 47.117 94
--
-- Auto-Script: Requires Verification (Verified by Brawndo)
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters_[S]/TextIDs"] = nil;
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(416);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

