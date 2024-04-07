# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/enderman/portal_above
# File Name: portal_above_loop
# Function Name: dvz:zombies/enderman/portal_above_loop
# File Purpose: Ray casting loop for enderman's create portal above you ability.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Stops ray casting if ray is inside a solid block or is too far from the origin.
# height of portal = distance - 3
execute unless block ~ ~ ~ #dvz:go_through run return 0
execute unless entity @a[tag=temp_ray_origin,distance=..28] run return 0

# Teleports the ray one block forward.
tp @s ^ ^ ^1

# Repeat ray casting loop.
execute as @s at @s run function dvz:zombies/enderman/portal_above_loop