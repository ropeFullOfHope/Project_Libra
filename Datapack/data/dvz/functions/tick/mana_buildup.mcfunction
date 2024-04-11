# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: mana_buildup
# Function Name: dvz:tick/mana_buildup
# File Purpose: Handles all passive mana gain/loss for dwarves.
# Created By: ropeFullOfHope
# 
# Created On: 2023.12.03
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: 
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# If a non-builder dwarf is at or below 99 mana, they gain 1 mana every second (50 millimana every tick).
scoreboard players add @s[tag=!builder,level=..99] dvz.dwarf.mana_buildup 50

# If a non-builder dwarf is at or above 101 mana and is not near shrine and doesn't have mana regen effect, they lose 1 mana every 5 seconds (10 millimana every tick).
execute unless entity @e[type=minecraft:marker,tag=shrine,distance=..8] run scoreboard players remove @s[tag=!builder,level=101..,predicate=!dvz:effect/hero_of_the_village] dvz.dwarf.mana_buildup 10

# If a dwarf is near shrine, they gain 1 mana every 5 seconds (10 millimana every tick).
execute if entity @e[type=minecraft:marker,tag=shrine,distance=..8] run scoreboard players add @s dvz.dwarf.mana_buildup 10