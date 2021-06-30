# Made by Aelve
# Called by portal/functions/x_left_corner.mcfunction
# Recursively checks for blocks inside a portal frame (x axis).

# If a block is found that is not air AND not fire, then frame is not empty.
execute unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:fire unless entity @e[type=minecraft:marker,tag=portal.edge,distance=..0.1] run scoreboard players set @s isempty 1

# Start recursive check to the side.
execute unless entity @e[type=minecraft:marker,tag=portal.edge,distance=..0.1] positioned ~1 ~ ~ run function portal:x_check_right

# Continue checking until the next block is frame.
execute unless entity @e[type=minecraft:marker,tag=portal.edge,distance=..0.1] positioned ~ ~1 ~ run function portal:x_check_up
