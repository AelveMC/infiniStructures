# Made by Aelve
# Called by portal/functions/z_check_up.mcfunction
# Recursively checks for blocks inside a portal frame (z axis).

# If a block is found that is not air AND not fire, then frame is not empty.
execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:fire unless entity @e[type=minecraft:marker,tag=portal.edge,distance=..0.1] run scoreboard players set @s isempty 1

# If frame is empty AND the above block is frame AND the next block is frame, then fill the portal.
execute if score @s isempty matches 0 positioned ~ ~1 ~-1 if entity @e[type=minecraft:marker,tag=portal.edge,distance=..0.1] positioned ~ ~-1 ~1 if entity @e[type=minecraft:marker,tag=portal.edge,distance=..0.1] positioned ~ ~ ~-1 run function portal:z_fill_portal

# Continue checking until the next block is frame.
execute unless entity @e[type=minecraft:marker,tag=portal.edge,distance=..0.1] positioned ~ ~ ~1 run function portal:z_check_right

