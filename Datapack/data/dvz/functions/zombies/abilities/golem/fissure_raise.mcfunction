# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/golem/fissure_loop
# File Name: fissure_raise
# Function Name: dvz:zombies/golem/fissure_raise
# File Purpose: Clones the block below ground with some exceptions.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

clone ~ ~-3 ~ ~ ~-3 ~ ~ ~ ~ replace force

execute if block ~ ~-3 ~ #dvz:go_through run setblock ~ ~ ~ minecraft:stone
execute if block ~ ~-3 ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:blackstone
execute if block ~ ~-3 ~ minecraft:water run setblock ~ ~ ~ minecraft:ice
execute if block ~ ~-3 ~ minecraft:lava run setblock ~ ~ ~ minecraft:obsidian
execute if block ~ ~-3 ~ minecraft:gold_block run setblock ~ ~ ~ minecraft:gilded_blackstone