# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: spawn
# Function Name: ogvz:dwarves/spawn
# File Purpose: Teleports the player to the shrine and gives them dwarf discs.
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

execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] run tp @s ~ ~2 ~

team join d1DWARF @s

tag @s add ogvz.dwarf

### Give discs to player.
# 100%
execute as @s at @s run function ogvz:give/disc/dwarves/builder

# 50%
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/disc/dwarves/blacksmith
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/disc/dwarves/tailor
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/disc/dwarves/baker
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/disc/dwarves/alchemist
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/disc/dwarves/enchanter