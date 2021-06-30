# Made by Aelve
# Called by portal_transfer/advancements/infininether_from.json
# Checks player is inside the custom portal and activates functions once timer hits the limit.

# Constantly revoking advancement required for "enter_block" trigger.
advancement revoke @s only portal_transfer:infininether_from

# Initialise scoreboards.
scoreboard objectives add inf.TimeInPortal dummy
scoreboard objectives add inf.PortalCrying dummy
execute unless score @s inf.TimeInPortal matches 1.. run scoreboard players set @s inf.TimeInPortal 0
execute unless score @s inf.PortalCrying matches 1.. run scoreboard players set @s inf.PortalCrying 0

# Until edge is found, continue looking for edge.
execute if block ~ ~ ~ minecraft:nether_portal[axis=x] positioned ~1 ~ ~ run function portal_transfer:crying_obsidian/start_from
execute if block ~ ~ ~ minecraft:nether_portal[axis=z] positioned ~ ~ ~1 run function portal_transfer:crying_obsidian/start_from

# If edge is found, stop searching and begin timer.
execute if block ~ ~ ~ minecraft:obsidian run scoreboard players set @s inf.PortalCrying 1
execute if block ~ ~ ~ minecraft:obsidian run schedule function portal_transfer:increment 1t append
execute if score @s inf.TimeInPortal matches 0 if block ~ ~ ~ minecraft:obsidian run scoreboard players set @s inf.TimeInPortal 1

# Activate teleport once timer reaches 50 ticks, then reset timer.
execute if score @s inf.TimeInPortal matches 50 if score @s inf.PortalCrying matches 1 run function portal_transfer:crying_obsidian/teleport_from
execute if score @s inf.TimeInPortal matches 50 run scoreboard players set @s inf.TimeInPortal 0
