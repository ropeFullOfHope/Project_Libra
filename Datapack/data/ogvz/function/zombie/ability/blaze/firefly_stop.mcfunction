# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: firefly_stop
# Function Name: ogvz:zombie/ability/blaze/firefly_stop
# File Purpose: Stops the flying.
# Created By: ropeFullOfHope
# 
# Created On: 2025.03.12
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

scoreboard players set @s ogvz.blaze.firefly.duration.ticks 0

attribute @s minecraft:gravity modifier remove minecraft:ogvz.blaze.firefly.gravity

effect clear @s minecraft:invisibility
effect clear @s minecraft:resistance

effect give @s minecraft:slow_falling 1 0 true

item modify entity @s armor.head ogvz:set_empty_item_model_head
item modify entity @s armor.chest ogvz:set_leather_item_model_chest
item modify entity @s armor.legs ogvz:set_leather_item_model_legs
item modify entity @s armor.feet ogvz:set_leather_item_model_feet
