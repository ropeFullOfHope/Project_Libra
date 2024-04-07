# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/held_detect
# File Name: descend_enable
# Function Name: dvz:zombies/bee/descend_enable
# File Purpose: Gives slow falling and clears levitation.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.22
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

effect clear @s minecraft:levitation
tag @s remove ascend_enabled

effect give @s minecraft:slow_falling infinite 0 true
tag @s add descend_enabled

tag @s add ascend_descend_enabled