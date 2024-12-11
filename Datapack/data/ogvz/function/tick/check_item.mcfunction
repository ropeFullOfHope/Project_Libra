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

# Prevent zombie players from dropping items unless the item has droppable custom data. Players in creative mode are ignored.
execute on origin if entity @s[tag=ogvz.zombie,gamemode=!creative] as @n[type=minecraft:item,tag=temp.processing] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{droppable:1}}}}] at @s run function ogvz:misc/prevent_item_drop

# Prevent non-zombie players from dropping items with undroppable custom data. Players in creative mode are ignored.
execute on origin if entity @s[tag=!ogvz.zombie,gamemode=!creative] as @n[type=minecraft:item,tag=temp.processing] if entity @s[nbt={Item:{components:{"minecraft:custom_data":{undroppable:1}}}}] at @s run function ogvz:misc/prevent_item_drop

tag @s remove temp.processing

tag @s add ogvz.processed