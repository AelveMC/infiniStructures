# Made by Aelve
# Called by portal/advancements/crying_obsidian_portal_create.json
# Initial setup and starts raycasting.

advancement revoke @s only portal:crying_obsidian_portal_create

scoreboard objectives add perimeter dummy
scoreboard objectives add isempty dummy
scoreboard players set @s perimeter 0
scoreboard players set @s isempty 0

# Kill temp markers after a short delay.
schedule function portal:remove_marker 1t append

# Start raycating from player's eye level.
execute anchored eyes positioned ^ ^ ^ run function portal:portal_crying_obsidian/raycast

