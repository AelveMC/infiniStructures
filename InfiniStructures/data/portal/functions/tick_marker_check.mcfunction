# Made by Aelve
# Called by minecraft/tags/functions/tick.json
# Constantly checks for markers outside portals and removes them.

execute as @e[type=minecraft:marker,tag=inf.location] at @s unless block ~ ~ ~ minecraft:nether_portal run kill @s