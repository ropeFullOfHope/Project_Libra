# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/passive_detect
# File Name: fire_coat
# Function Name: dvz:zombies/blaze/fire_coat
# File Purpose: Grants resistance when on fire.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.19
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[predicate=dvz:is_on_fire] run effect give @s minecraft:resistance 1 1 true