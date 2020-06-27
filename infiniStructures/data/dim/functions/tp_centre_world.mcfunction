# Made by Aelve
# Called by dim/functions/overworld_return.mcfunction
# Sets an end portal as the way to get back to the overworld

execute as @a[team=teleport] at @s run execute in infini:infiniworld run tp 0 66 -3
execute as @a[team=teleport] at @s run execute in infini:infiniworld run team leave @s
