# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/golem/fissure_loop
# File Name: fissure_search
# Function Name: dvz:zombies/golem/fissure_search
# File Purpose: Keeps moving the ray forward untill it moves inside a new block.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute at @s run tp @s ^ ^ ^0.1

execute at @s align xz unless entity @e[type=minecraft:marker,tag=processed,distance=..0.1] run return 0

execute as @s at @s run function dvz:zombies/golem/fissure_search