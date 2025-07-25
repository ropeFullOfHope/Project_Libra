# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombie/ability/golem/fissure_loop
# File Name: fissure_search
# Function Name: dvz:zombie/ability/golem/fissure_search
# File Purpose: Keeps moving the ray forward until it moves inside a new block.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.14
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute at @s run tp @s ^ ^ ^0.1

execute at @s align xyz unless entity @e[type=minecraft:marker,tag=temp.fissure,distance=..0.1] run return 0

execute as @s at @s run function ogvz:zombie/ability/golem/fissure_search
