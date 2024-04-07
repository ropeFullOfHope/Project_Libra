# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: ice_cube_box
# Function Name: dvz:zombies/chillager/ice_cube_box
# File Purpose: Encases player with Packed Ice.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.08
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

clear @s minecraft:carrot_on_a_stick{CustomModelData:7071}

execute as @s[tag=ice_type] run return 0

playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 2 0.6

# Create an Ice box around player.
fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:packed_ice replace #dvz:go_through
fill ~ ~1 ~ ~ ~1 ~ minecraft:powder_snow replace minecraft:packed_ice