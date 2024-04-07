# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/passive_detect
# File Name: withering_bones
# Function Name: dvz:zombies/wither_skeleton/withering_bones
# File Purpose: Replaces the Withering effect with the Regeneration effect.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.12
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute store result score @s DVZ.result.score run effect clear @s minecraft:wither
execute if entity @s[scores={DVZ.result.score=1..}] run effect give @s minecraft:regeneration 10 1