# Made by Aelve
# Called by portal/functions/portal_<>/start.mcfunction
# Kills all markers used in frame calculations.

kill @e[type=marker,tag=portal.end]
kill @e[type=marker,tag=portal.edge]