# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: prevent_item_drop
# Function Name: dvz:misc/prevent_item_drop
# File Purpose: Returns undroppable items back to the player that threw them.
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

data modify entity @s Owner set from entity @s Thrower
data modify entity @s PickupDelay set value 0s

execute on origin run title @s actionbar {"text":"You cannot drop this item!","color":"dark_red"}

execute on origin run tag @s add temp_origin
execute at @p[tag=temp_origin] run tp @s ~ ~0.8 ~
tag @a remove temp_origin