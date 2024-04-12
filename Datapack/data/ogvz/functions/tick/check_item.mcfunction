# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: check_item
# Function Name: ogvz:tick/check_item
# File Purpose: Checks if item entity is allowed to be dropped.
# Created By: ropeFullOfHope
# 
# Created On: 2023.11.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

tag @s add processing

execute on origin if entity @s[tag=zombies] as @e[type=minecraft:item,tag=processing] unless entity @s[nbt={Item:{tag:{droppable:1}}}] at @s run function ogvz:misc/prevent_item_drop

execute as @s[tag=processing,nbt={Item:{tag:{undroppable:1}}}] at @s run function ogvz:misc/prevent_item_drop

tag @s remove processing
tag @s add processed