-----------------------------------
-- Area: Bastok Mines
--  NPC: Gorvik
-- Type: Past Event Watcher
-- !pos 21.033 - 1 -98.486 234
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    xi.melody_minstrels.rewatch(player, 0)
end

entity.onEventFinish = function(player, csid, option, npc)
    xi.melody_minstrels.startEvent(player, csid, option, 0)
end

return entity
