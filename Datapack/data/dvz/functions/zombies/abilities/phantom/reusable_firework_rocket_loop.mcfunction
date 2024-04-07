# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/phantom/reusable_firework_rocket
# File Name: reusable_firework_rocket_loop
# Function Name: dvz:zombies/phantom/reusable_firework_rocket_loop
# File Purpose: Clears excess firework rockets.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.20
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

clear @s minecraft:firework_rocket{reusable:1} 1

scoreboard players remove @s DVZ.result.score 1

# Repeat loop until all excess firework rockets have been removed.
execute as @s[scores={DVZ.result.score=6..}] at @s run function dvz:zombies/phantom/reusable_firework_rocket_loop