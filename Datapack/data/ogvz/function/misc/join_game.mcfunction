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

# Return if the game is in setup phase.
execute if score &ogvz ogvz.game.phase matches 0 run return 0

execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/clear_scoreboards
execute as @s at @s run function ogvz:misc/remove_attributes

tag @s add ogvz.joined_game

clear @s

gamemode survival @s

effect clear @s

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

# If a player joins during build phase (1), they spawn in as a dwarf, otherwise they spawn in as a zombie.
execute if score &ogvz ogvz.game.phase matches 1 run function ogvz:dwarf/spawn
execute if score &ogvz ogvz.game.phase matches 2..5 run function ogvz:zombie/spawn
