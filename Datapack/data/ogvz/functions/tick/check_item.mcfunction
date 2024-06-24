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

tag @s add temp.processing

execute on origin if entity @s[tag=ogvz.zombie] as @e[type=minecraft:item,tag=temp.processing] unless entity @s[nbt={Item:{tag:{droppable:1}}}] at @s run function ogvz:misc/prevent_item_drop

execute on origin unless entity @s[tag=!ogvz.zombie] as @e[type=minecraft:item,tag=temp.processing] if entity @s[nbt={Item:{tag:{undroppable:1}}}] at @s run function ogvz:misc/prevent_item_drop

tag @s remove temp.processing

tag @s add ogvz.processed