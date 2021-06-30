# Made by Aelve
# Called by portal/functions/portal_<>/raycasy.mcfunction
# Checks bottom of frame is complete (z axis).

# Add 1 to perimiter limit each frame block. Remove 1 on corners to prevent double-counting.
execute if block ~ ~ ~ minecraft:obsidian run scoreboard players add @s perimeter 1
execute if block ~ ~ ~1 minecraft:obsidian if block ~ ~1 ~1 minecraft:obsidian run scoreboard players remove @s perimeter 1

# Mark edge for later checking.
execute if block ~ ~ ~ minecraft:obsidian run summon minecraft:marker ~ ~ ~ {Tags:["portal.edge"]}

# If frame is complete AND perimiter limit is between 10 and 100, then begin checking frame interior.
execute if entity @e[type=minecraft:marker,tag=portal.end,distance=..0.1] if score @s perimeter matches 10.. if score @s perimeter matches ..100 positioned ~ ~1 ~ run function portal:z_left_corner

# Continue recursion until bottom of frame ends.
execute if block ~ ~ ~ minecraft:obsidian unless entity @e[type=minecraft:marker,tag=portal.end,distance=..0.1] positioned ~ ~ ~1 run function portal:portal_obsidian/z_edge_right

# Locate side edge, skipping corner. (Why does this act differently from the other edge transitions??)
execute if block ~ ~1 ~ minecraft:obsidian positioned ~ ~1 ~ run function portal:portal_obsidian/z_edge_up

# If frame is complete, remove temp marker.
execute if entity @e[type=minecraft:marker,tag=portal.end,distance=..0.1] run kill @e[type=minecraft:marker,tag=portal.end,distance=..0.1]


