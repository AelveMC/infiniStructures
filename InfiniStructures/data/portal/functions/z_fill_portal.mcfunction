# Made by Aelve
# Called by portal/functions/z_check_right.mcfunction
# Recursively fills a frame with nether portals (z axis).

setblock ~ ~ ~ minecraft:nether_portal[axis=z]

# Starts from top corner and fills downwards.
execute if block ~ ~ ~-1 minecraft:air positioned ~ ~ ~-1 run function portal:z_fill_portal
execute if block ~ ~ ~-1 minecraft:fire positioned ~ ~ ~-1 run function portal:z_fill_portal

execute if block ~ ~-1 ~ minecraft:air positioned ~ ~-1 ~ run function portal:z_fill_portal
execute if block ~ ~-1 ~ minecraft:fire positioned ~ ~-1 ~ run function portal:z_fill_portal
