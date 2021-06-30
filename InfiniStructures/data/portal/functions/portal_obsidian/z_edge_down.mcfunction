# Made by Aelve
# Called by portal/functions/portal_<>/z_edge_left.mcfunction
# Checks left side of frame is complete (z axis).

# Add 1 to perimiter limit each frame block. Remove 1 on corners to prevent double-counting.
execute if block ~ ~ ~ minecraft:obsidian run scoreboard players add @s perimeter 1
execute if block ~ ~-1 ~ minecraft:obsidian if block ~ ~-1 ~1 minecraft:obsidian run scoreboard players remove @s perimeter 1

# Mark edge for later checking.
execute if block ~ ~ ~ minecraft:obsidian run summon minecraft:marker ~ ~ ~ {Tags:["portal.edge"]}

# Continue recursion until side of frame ends.
execute if block ~ ~ ~ minecraft:obsidian positioned ~ ~-1 ~ run function portal:portal_obsidian/z_edge_down

# Locate bottom edge, skipping corner.
execute if block ~ ~ ~ minecraft:obsidian if block ~ ~-1 ~1 minecraft:obsidian positioned ~ ~-1 ~1 run function portal:portal_obsidian/z_edge_right
