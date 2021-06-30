# Made by Aelve
# Called by portal_transfer/advancements/overworld_from.json
# Initialise portals placed in the overworld. (Calling these seperately caused conflicts).

# Constantly revoking advancement required for "enter_block" trigger.
advancement revoke @s only portal_transfer:overworld_from

# Initialise scoreboards.
scoreboard objectives add inf.TimeInPortal dummy
scoreboard objectives add inf.PortalCrying dummy
scoreboard objectives add inf.PortalDPris dummy

execute unless score @s inf.TimeInPortal matches 1.. run scoreboard players set @s inf.TimeInPortal 0
execute unless score @s inf.PortalCrying matches 1.. run scoreboard players set @s inf.PortalCrying 0
execute unless score @s inf.PortalDPris matches 1.. run scoreboard players set @s inf.PortalDPris 0

# Until edge is found, continue looking for edge.
execute if block ~ ~ ~ minecraft:nether_portal[axis=x] positioned ~1 ~ ~ run function portal_transfer:overworld_portals
execute if block ~ ~ ~ minecraft:nether_portal[axis=z] positioned ~ ~ ~1 run function portal_transfer:overworld_portals

# Find which portal this is, and call relevant function.
execute if block ~ ~ ~ minecraft:dark_prismarine run function portal_transfer:dark_prismarine/start_to
execute if block ~ ~ ~ minecraft:crying_obsidian run function portal_transfer:crying_obsidian/start_to



