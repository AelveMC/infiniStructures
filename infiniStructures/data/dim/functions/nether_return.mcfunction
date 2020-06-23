# Made by Aelve
# Called by dim/functions/inside.mcfunction
# Sets an end portal as the way to get back to the overworld

execute in infini:infininether run tp 0 66 -3

# Set space
execute in infini:infininether unless block 0 64 0 minecraft:bedrock run fill 3 65 -3 -3 68 3 air

# Main platform
execute in infini:infininether run fill -2 64 -2 2 64 2 minecraft:bedrock
execute in infini:infininether run fill 0 65 0 0 68 0 minecraft:bedrock

# Edges
execute in infini:infininether run fill 3 64 -1 3 65 1 minecraft:bedrock
execute in infini:infininether run fill 1 64 3 -1 65 3 minecraft:bedrock
execute in infini:infininether run fill -3 64 1 -3 65 -1 minecraft:bedrock
execute in infini:infininether run fill -1 64 -3 1 65 -3 minecraft:bedrock

# Corners
execute in infini:infininether run setblock 2 65 2 minecraft:bedrock
execute in infini:infininether run setblock 2 65 -2 minecraft:bedrock
execute in infini:infininether run setblock -2 65 2 minecraft:bedrock
execute in infini:infininether run setblock -2 65 -2 minecraft:bedrock

# Fill portal
execute in infini:infininether run fill -2 65 -2 2 65 2 minecraft:end_portal replace air

