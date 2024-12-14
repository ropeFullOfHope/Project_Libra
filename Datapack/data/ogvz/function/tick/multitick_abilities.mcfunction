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
execute as @e[type=minecraft:marker,tag=ogvz.marker.explode,scores={ogvz.creeper.explode.state=..-1}] at @s run function ogvz:zombie/ability/creeper/explode_multitick

# Golem - leap
execute as @a[tag=ogvz.zombie.class.golem,scores={ogvz.golem.leap.state=..-1}] at @s run function ogvz:zombie/ability/golem/leap_multitick
