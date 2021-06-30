# Made by Aelve
# Called by portal/functions/portal_<>/start.mcfunction
# Raycasts until it hits a fire block. Marks location with marker to locate starting point of loop.

# Raycast in 0.1 block increments through air.
execute if block ~ ~ ~ minecraft:air positioned ^ ^ ^0.1 run function portal:portal_dark_prismarine/raycast

# If raycast hits fire, try to create portals on x and z axis.
execute if block ~ ~ ~ fire run summon minecraft:marker ~ ~-1 ~ {Tags:["portal.end"]}
execute if block ~ ~ ~ fire positioned ~1 ~-1 ~ run function portal:portal_dark_prismarine/x_edge_right
execute if block ~ ~ ~ fire positioned ~ ~-1 ~1 run function portal:portal_dark_prismarine/z_edge_right

