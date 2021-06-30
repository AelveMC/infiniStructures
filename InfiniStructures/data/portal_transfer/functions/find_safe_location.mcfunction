# Made by Aelve
# Called by portal_transfer/functions/crying_obsidian/make_portal_<>.mcfunction
# Check for solid blocks around the player. Placing the player inside the portal is a last resort, as teleporting doesn't reset the vanilla cooldown.

# Checks for immediate blocks around player that are safe.
execute unless block ~ ~-1 ~-1 #portal_transfer:blacklist if block ~ ~ ~-1 minecraft:air run tp ~ ~ ~-1
execute unless block ~-1 ~-1 ~-1 #portal_transfer:blacklist if block ~-1 ~ ~-1 minecraft:air run tp ~-1 ~ ~-1
execute unless block ~-1 ~-1 ~ #portal_transfer:blacklist if block ~-1 ~ ~ minecraft:air run tp ~-1 ~ ~
execute unless block ~-1 ~-1 ~1 #portal_transfer:blacklist if block ~-1 ~ ~1 minecraft:air run tp ~-1 ~ ~1
execute unless block ~ ~-1 ~1 #portal_transfer:blacklist if block ~ ~ ~1 minecraft:air run tp ~ ~ ~1
execute unless block ~1 ~-1 ~1 #portal_transfer:blacklist if block ~1 ~ ~1 minecraft:air run tp ~1 ~ ~1
execute unless block ~1 ~-1  #portal_transfer:blacklist if block ~1 ~ ~ minecraft:air run tp ~1 ~ ~
execute unless block ~1 ~-1 ~-1 #portal_transfer:blacklist if block ~1 ~ ~-1 minecraft:air run tp ~1 ~ ~-1