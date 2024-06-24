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

execute at @e[type=minecraft:marker,tag=shrine] run tp @s ~ ~ ~

team join d1DWARF @s

tag @s add ogvz.dwarf

### Give discs to player.
# 100%
execute as @s at @s run function ogvz:give/dwarf_disc/builder

# 50%
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/dwarf_disc/blacksmith
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/dwarf_disc/tailor
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/dwarf_disc/baker
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/dwarf_disc/alchemist
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/dwarf_disc/enchanter