# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: mana_subtract
# Function Name: ogvz:tick/mana_subtract
# File Purpose: Removes levels (mana) from a player.
# Created By: ropeFullOfHope
# 
# Created On: 2024.06.25
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Add 1 mana to the score.
scoreboard players add @s ogvz.dwarf.mana_buildup.mana 1

# Remove 1 level from the player.
experience add @s -1 levels

# Set mana buildup to 0 if player has no mana left.
scoreboard players set @s[level=0] ogvz.dwarf.mana_buildup.mana 0

# Update the exp bar if all the mana buildup has been subtracted.
execute as @s[scores={ogvz.dwarf.mana_buildup.mana=0}] at @s run function ogvz:misc/mana_bar

# Suppress the level up ding sound.
#stopsound @a[distance=..17] player minecraft:entity.player.levelup

# Repeat function until ogvz.dwarf.mana_buildup.mana is at 0 mana.
execute as @s[scores={ogvz.dwarf.mana_buildup.mana=..-1}] at @s run function ogvz:tick/mana_subtract