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
# Comments: -1,000,000 micromana = -1 mana
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Add 1000000 micromana to the score.
scoreboard players add @s ogvz.dwarf.mana_buildup.micromana 1000000

# Remove 1 level from the player.
experience add @s -1 levels

# Update the exp bar if all the mana buildup has been subtracted.
execute as @s[scores={ogvz.dwarf.mana_buildup.micromana=-999999..}] at @s run function ogvz:misc/mana_bar

# Suppress the level up ding sound.
stopsound @a[distance=..17] player minecraft:entity.player.levelup

# Repeat function until ogvz.dwarf.mana_buildup.micromana is above -1000000 micromana.
execute as @s[scores={ogvz.dwarf.mana_buildup.micromana=..-1000000}] at @s run function ogvz:tick/mana_subtract