# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: oceans_pearl_resize_hitbox
# Function Name: ogvz:dwarf/hero/dwarven_guard/oceans_pearl_resize_hitbox
# File Purpose: Resizes the slime which works as the hitbox of the ocean's pearl.
# Created By: ropeFullOfHope
# 
# Created On: 2024.11.20
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute as @e[type=minecraft:slime,tag=ogvz.oceans_pearl_hitbox.resize] run attribute @s minecraft:scale base set 1.5

tag @e[type=minecraft:slime,tag=ogvz.oceans_pearl_hitbox.resize] remove ogvz.oceans_pearl_hitbox.resize
