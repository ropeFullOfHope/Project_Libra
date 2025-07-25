# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: undying_bond
# Function Name: ogvz:zombie/ability/zombie_variant/undying_bond
# File Purpose: Gives regeneration if there are other zombie variants near you.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.06
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @a[tag=ogvz.zombie.class.zombie_variant,distance=0.01..8] run effect give @s minecraft:regeneration 1 1
