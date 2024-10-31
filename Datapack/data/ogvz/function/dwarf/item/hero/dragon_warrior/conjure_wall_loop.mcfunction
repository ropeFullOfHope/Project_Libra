# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: conjure_wall_loop
# Function Name: ogvz:dwarf/item/hero/dragon_warrior/conjure_wall_loop
# File Purpose: Ray casting loop for dragon warrior's conjure wall.
# Created By: ropeFullOfHope
# 
# Created On: 2024.10.28
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Stops ray casting if ray is inside a solid block or is too far from the origin.
execute unless block ~ ~ ~ #ogvz:go_through run return 0
execute unless entity @e[type=minecraft:marker,tag=temp.ray_origin,distance=..4.5] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.001

# Repeat ray casting loop.
execute as @s at @s run function ogvz:dwarf/item/hero/dragon_warrior/conjure_wall_loop
