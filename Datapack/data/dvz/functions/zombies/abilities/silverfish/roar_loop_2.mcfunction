# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/silverfish/roar_loop_1
# File Name: roar_loop_2
# Function Name: dvz:zombies/silverfish/roar_loop_2
# File Purpose: Loop to spawns silverfish at random dwarves.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.23
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @a[tag=dwarves] at @r[tag=dwarves] summon minecraft:silverfish run team join z5SILVERFISH @s

scoreboard players remove @s DVZ.result.score 1

execute as @s at @s if entity @s[scores={DVZ.result.score=1..}] run function dvz:zombies/silverfish/roar_loop_2