# Made by Aelve
# Called by portal_transfer/functions/dark_prismarine/teleport_to.mcfunction
# Creates portal at player.

# Teleport player to highest block, and search for closest correct portal.
execute as @a[tag=inf.dark_prismarine_portal] at @s run spreadplayers ~ ~ 0 2 false @s
execute as @a[tag=inf.dark_prismarine_portal] at @s run tp @e[type=minecraft:marker,tag=inf.location,predicate=portal_transfer:on_dark_prismarine,sort=nearest,limit=1,distance=..64]

# Create and mark portal.
execute at @a[tag=inf.dark_prismarine_portal] unless block ~ ~ ~ minecraft:nether_portal run fill ~ ~-1 ~ ~1 ~-1 ~ minecraft:dark_prismarine
execute at @a[tag=inf.dark_prismarine_portal] unless block ~ ~ ~ minecraft:nether_portal run fill ~-1 ~ ~ ~-1 ~2 ~ minecraft:dark_prismarine
execute at @a[tag=inf.dark_prismarine_portal] unless block ~ ~ ~ minecraft:nether_portal run fill ~ ~3 ~ ~1 ~3 ~ minecraft:dark_prismarine
execute at @a[tag=inf.dark_prismarine_portal] unless block ~ ~ ~ minecraft:nether_portal run fill ~2 ~ ~ ~2 ~2 ~ minecraft:dark_prismarine
execute at @a[tag=inf.dark_prismarine_portal] unless block ~ ~ ~ minecraft:nether_portal run fill ~ ~-1 ~1 ~1 ~-1 ~-1 minecraft:obsidian replace air
execute at @a[tag=inf.dark_prismarine_portal] unless block ~ ~ ~ minecraft:nether_portal run summon minecraft:marker ~ ~ ~ {Tags:["inf.location"]}
execute at @a[tag=inf.dark_prismarine_portal] unless block ~ ~ ~ minecraft:nether_portal run fill ~ ~ ~ ~1 ~2 ~ minecraft:nether_portal[axis=x]

# Check for solid blocks around the player. Placing the player inside the portal is a last resort, as teleporting doesn't reset the vanilla cooldown.
execute as @a[tag=inf.dark_prismarine_portal] at @s run function portal_transfer:find_safe_location

# Remove effects.
execute as @a[tag=inf.dark_prismarine_portal] run effect clear @s minecraft:levitation
execute as @a[tag=inf.dark_prismarine_portal] run effect clear @s minecraft:blindness

# Finally, untag player.
tag @a remove inf.dark_prismarine_portal