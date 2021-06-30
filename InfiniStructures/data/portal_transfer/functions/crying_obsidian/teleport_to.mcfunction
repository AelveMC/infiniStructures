# Made by Aelve
# Called by portal_transfer/functions/crying_obsidian/start_to.mcfunction
# Teleports player to dimension.

# Allows for co-ordinate scaling.
execute in infdim:infininether run tp @s ~ ~ ~

# Ensure portals are only created at the right players.
tag @s add inf.obsidian_portal

# Stop player from moving and hide janky teleport until everything loads.
effect give @s minecraft:levitation 1 255 true
effect give @s minecraft:blindness 10 0 true

# Delay creating portal for 1 tick to allow player to load chunks.
schedule function portal_transfer:crying_obsidian/make_portal_from 1t append
scoreboard players set @s inf.PortalCrying 0
