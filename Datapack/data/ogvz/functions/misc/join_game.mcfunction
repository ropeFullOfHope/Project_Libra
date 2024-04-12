# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: join_game
# Function Name: ogvz:misc/join_game
# File Purpose: Joins the player to the Dwarf or Zombie team depending on the game phase.
# Created By: ropeFullOfHope
# 
# Created On: 2023.13.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] run return 0
execute if entity @s[tag=joined] run return 0

tag @s add joined

clear @s

gamemode survival @s

effect clear @s

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

execute if entity @e[type=minecraft:marker,tag=dvz,tag=build_phase] run function ogvz:dwarves/spawn
execute if entity @e[type=minecraft:marker,tag=dvz,tag=boss_phase] run function ogvz:zombies/spawn
execute if entity @e[type=minecraft:marker,tag=dvz,tag=zombie_phase] run function ogvz:zombies/spawn
execute if entity @e[type=minecraft:marker,tag=dvz,tag=last_stand_phase] run function ogvz:zombies/spawn
execute if entity @e[type=minecraft:marker,tag=dvz,tag=game_over_phase] run function ogvz:zombies/spawn