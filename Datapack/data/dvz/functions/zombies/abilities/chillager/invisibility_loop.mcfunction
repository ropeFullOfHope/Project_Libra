# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: invisibility_loop
# Function Name: dvz:zombies/chillager/invisibility_loop
# File Purpose: Gives back armor once the invisibility runs out.
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

scoreboard players remove @s DVZ.invisibility.tick 1

execute as @s[scores={DVZ.invisibility.tick=..0}] at @s run function dvz:zombies/chillager/armor_up