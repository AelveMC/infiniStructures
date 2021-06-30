# Made by Aelve
# Called by portal/advancements/dark_prismarine_portal_create.json
# Initial setup and starts raycasting.

advancement revoke @s only portal:dark_prismarine_portal_create

scoreboard objectives add perimeter dummy
scoreboard objectives add isempty dummy
scoreboard players set @s perimeter 0
scoreboard players set @s isempty 0

# Kill temp markers after a short delay.
schedule function portal:remove_marker 1t append

# Start raycating from player's eye level.
execute anchored eyes positioned ^ ^ ^ run function portal:portal_dark_prismarine/raycast

