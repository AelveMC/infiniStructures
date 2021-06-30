# Made by Aelve
# Called by portal/functions/portal_<>/z_edge_right.mcfunction
# Finds the left side of the frame. Marks location with marker for location use later (z axis).

# Search left until hit frame.
execute unless entity @e[type=minecraft:marker,tag=portal.edge,distance=..0.1] positioned ~ ~ ~-1 run function portal:z_left_corner

# Set "location" marker in middle of inner corner block.
execute if entity @e[type=minecraft:marker,tag=portal.edge,distance=..0.1] positioned ~ ~ ~1 align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["inf.location"]}

# When corner is found, start recursive check.
execute if entity @e[type=minecraft:marker,tag=portal.edge,distance=..0.1] positioned ~ ~ ~1 run function portal:z_check_up