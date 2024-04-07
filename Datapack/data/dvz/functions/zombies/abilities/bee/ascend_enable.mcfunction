# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/held_detect
# File Name: ascend_enable
# Function Name: dvz:zombies/bee/ascend_enable
# File Purpose: Gives levitation and clears slow falling.
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

effect clear @s minecraft:slow_falling
tag @s remove descend_enabled

effect give @s minecraft:levitation infinite 1 true
tag @s add ascend_enabled

tag @s add ascend_descend_enabled