# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: multitick_abilities
# Function Name: ogvz:tick/multitick_abilities
# File Purpose: Function tree for abilities that last more than 1 tick.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.07
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Creeper - explode
execute as @e[type=minecraft:marker,tag=ogvz.marker.explode,tag=ogvz.state.remove_attributes] at @s run function ogvz:zombie/ability/creeper/explode_remove_attribute
execute as @e[type=minecraft:marker,tag=ogvz.marker.explode,tag=ogvz.state.explode_again] at @s run function ogvz:zombie/ability/creeper/explode_again
execute as @e[type=minecraft:marker,tag=ogvz.marker.explode,tag=ogvz.state.wait_1] at @s run function ogvz:zombie/ability/creeper/explode_wait
execute as @e[type=minecraft:marker,tag=ogvz.marker.explode,tag=ogvz.state.wait_0] at @s run function ogvz:zombie/ability/creeper/explode_wait
