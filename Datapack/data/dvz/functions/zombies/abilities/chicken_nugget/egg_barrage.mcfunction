# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: egg_barrage
# Function Name: dvz:zombies/chicken_nugget/egg_barrage
# File Purpose: Spawns an explosive Egg below the Chicken Nugget.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.24
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute positioned ~ ~ ~ summon minecraft:egg run tag @s add eggsplosion
execute positioned ~ ~ ~ summon minecraft:marker run tag @s add eggsplosion