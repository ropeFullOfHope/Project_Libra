# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/chillager/ice_cube_loop
# File Name: ice_cube_loop
# Function Name: dvz:zombies/chillager/ice_cube_loop
# File Purpose: Ray scanning for Chillager's Ice Cube.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.08
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Stops ray casting if ray is inside a solid block or is too far from the origin.
execute unless block ~ ~ ~ minecraft:packed_ice unless block ~ ~ ~ #dvz:go_through run return 0
execute unless entity @a[tag=temp_ray_origin,distance=..8] run return 0

# Creates a block where the ray is.
setblock ~ ~ ~ minecraft:packed_ice

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

particle minecraft:snowflake ~ ~-1 ~ 1 1 1 0 3 force

# Repeat ray casting loop.
execute as @s at @s run function dvz:zombies/chillager/ice_cube_loop