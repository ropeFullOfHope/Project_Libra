# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: mana_subtract
# Function Name: ogvz:tick/mana_subtract
# File Purpose: Removes levels (mana) from a player.
# Created By: ropeFullOfHope
# 
# Created On: 2023.12.01
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: -1000 millimana = -1 mana
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Remove 1000 millimana from the score.
scoreboard players add @s ogvz.dwarf.mana_buildup 1000

# Removing 1 level from a player with no levels will leave them at 0 levels so checking if the player has 1+ levels is useless.
experience add @s -1 levels

# Update the exp bar if all the mana buildup has been subtracted.
execute as @s[scores={ogvz.dwarf.mana_buildup=-999..}] at @s run function ogvz:misc/mana_bar

# Suppress the level up ding sound.
stopsound @a[distance=..17] player minecraft:entity.player.levelup

# Repeat function until ogvz.dwarf.mana_buildup is above -1000 millimana.
execute as @s[scores={ogvz.dwarf.mana_buildup=..-1000}] at @s run function ogvz:tick/mana_subtract