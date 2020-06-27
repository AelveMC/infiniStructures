# Made by Aelve
# Called by dim/functions/nether_return.mcfunction
# Teleports player to middle

execute as @a[team=teleport] at @s run execute in infini:infininether run tp 0 66 -3
execute as @a[team=teleport] at @s run execute in infini:infininether run team leave @s
