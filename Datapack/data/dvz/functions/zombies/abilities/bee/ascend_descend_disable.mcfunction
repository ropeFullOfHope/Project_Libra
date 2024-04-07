# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/held_detect
# File Name: ascend_descend_disable
# Function Name: dvz:zombies/bee/ascend_descend_disable
# File Purpose: Clears levitation and slow falling.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.09
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

effect clear @s minecraft:levitation
tag @s remove ascend_enabled

effect clear @s minecraft:slow_falling
tag @s remove descend_enabled

tag @s remove ascend_descend_enabled