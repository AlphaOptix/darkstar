-----------------------------------
-- Area: Windurst Waters (S)
--   NPC: Mearuru
-- Type: Standard NPC
-- !pos 153.798 -1 153.712 94
--
-- Auto-Script: Requires Verification (Verified by Brawndo)
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters_[S]/TextIDs"] = nil;
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(418);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

