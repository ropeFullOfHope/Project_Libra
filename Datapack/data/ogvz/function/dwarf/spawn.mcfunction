# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: spawn
# Function Name: ogvz:dwarf/spawn
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

# Clear the shrine if obstructed.
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~-0.5 ~-0.5 ~-0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~-0.5 ~-0.5 ~0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~-0.5 ~0.5 ~-0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~-0.5 ~0.5 ~0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~0.5 ~-0.5 ~-0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~0.5 ~-0.5 ~0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~0.5 ~0.5 ~-0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air

# Teleport to the top of the shrine.
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] run tp @s ~ ~2 ~

team join d1DWARF @s

tag @s add ogvz.dwarf

### Give discs to player.
# 100%
execute as @s at @s run function ogvz:give/disc/dwarf/builder

# 50%
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/disc/dwarf/blacksmith
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/disc/dwarf/tailor
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/disc/dwarf/baker
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/disc/dwarf/alchemist
execute as @s[predicate=ogvz:50_chance] at @s run function ogvz:give/disc/dwarf/enchanter