# Made by Aelve
# Called by portal_transfer/functions/<>/start_<>.mcfunction
# Modifies scoreboard timer each tick and resets portal scoreboards.

# Step out of portal -> reset all portal scoreboards
execute as @a[scores={inf.TimeInPortal=1..}] at @s unless block ~ ~ ~ minecraft:nether_portal run scoreboard players set @s inf.PortalCrying 0
execute as @a[scores={inf.TimeInPortal=1..}] at @s unless block ~ ~ ~ minecraft:nether_portal run scoreboard players set @s inf.PortalDPris 0

# Add score when in portal, remove score when out of portal.
execute as @a[scores={inf.TimeInPortal=1..}] at @s if block ~ ~ ~ minecraft:nether_portal run scoreboard players add @s inf.TimeInPortal 1
execute as @a[scores={inf.TimeInPortal=1..}] at @s unless block ~ ~ ~ minecraft:nether_portal run scoreboard players remove @s inf.TimeInPortal 1

# If there are any players with timers remaining, continue.
execute if entity @a[scores={inf.TimeInPortal=1..}] run schedule function portal_transfer:increment 1t append