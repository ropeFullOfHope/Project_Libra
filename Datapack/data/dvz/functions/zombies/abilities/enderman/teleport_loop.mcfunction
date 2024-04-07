# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/enderman/teleport
# File Name: teleport_loop
# Function Name: dvz:zombies/enderman/teleport_loop
# File Purpose: Ray scanning for Enderman's teleport.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.29
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Stops ray casting if ray is inside a solid block or is too far from the origin.
execute unless block ~ ~ ~ #dvz:go_through run return 0
execute unless entity @a[tag=temp_ray_origin,distance=..32] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

# Repeat ray casting loop.
execute as @s at @s run function dvz:zombies/enderman/teleport_loop