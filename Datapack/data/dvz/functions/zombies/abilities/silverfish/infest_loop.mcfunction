# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/silverfish/infest
# File Name: infest_loop
# Function Name: dvz:zombies/silverfish/infest_loop
# File Purpose: Ray scanning for Silverfish's infest.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.22
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Stops ray casting if ray is inside a solid block, is too far from the origin or has hit a player.
execute unless block ~ ~ ~ #dvz:go_through run return 0
execute unless entity @e[type=minecraft:marker,tag=ray_origin,distance=..1.8] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

# Repeat ray casting loop.
execute as @s at @s run function dvz:zombies/silverfish/infest_loop