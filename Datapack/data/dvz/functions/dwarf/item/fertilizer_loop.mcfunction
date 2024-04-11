# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: fertilizer_loop
# Function Name: dvz:dwarves/fertilizer_loop
# File Purpose: Ray scanning for Fertilizer.
# Created By: ropeFullOfHope
# 
# Created On: 2024.01.04
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Stops ray casting if ray is inside a solid block or is too far from the origin.
execute unless block ~ ~ ~ #dvz:go_through run return 0
execute unless entity @e[type=minecraft:marker,tag=ray_origin,distance=..4.5] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

# Repeat ray casting loop.
execute as @s at @s run function dvz:dwarves/fertilizer_loop