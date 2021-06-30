# Made by Aelve
# Called by portal_transfer/functions/overworld_portals.mcfunction
# Checks player is inside the custom portal and activates functions once timer hits the limit.

# If edge is found, stop searching and begin timer.
execute if block ~ ~ ~ minecraft:crying_obsidian run scoreboard players set @s inf.PortalCrying 1
execute if block ~ ~ ~ minecraft:crying_obsidian run schedule function portal_transfer:increment 1t append
execute if score @s inf.TimeInPortal matches 0 if block ~ ~ ~ minecraft:crying_obsidian run scoreboard players set @s inf.TimeInPortal 1

# Activate teleport once timer reaches 50 ticks, then reset timer.
execute if score @s inf.TimeInPortal matches 50 if score @s inf.PortalCrying matches 1 run function portal_transfer:crying_obsidian/teleport_to
execute if score @s inf.TimeInPortal matches 50 run scoreboard players set @s inf.TimeInPortal 0
