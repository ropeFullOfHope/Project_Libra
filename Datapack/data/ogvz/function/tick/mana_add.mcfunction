# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: mana_add
# Function Name: ogvz:tick/mana_add
# File Purpose: Gives levels (mana) to a player.
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

# Remove 1 mana from the score.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 1

# The hard mana cap is set at 9999 mana.
experience add @s[level=..9998] 1 levels

# Update the exp bar if all the mana buildup has been added.
execute as @s[scores={ogvz.dwarf.mana_buildup.mana=0}] at @s run function ogvz:misc/mana_bar

# Suppress the level up ding sound.
#stopsound @a[distance=..17] player minecraft:entity.player.levelup

# Repeat function until ogvz.dwarf.mana_buildup.mana is at 0 mana.
execute as @s[scores={ogvz.dwarf.mana_buildup.mana=1..}] at @s run function ogvz:tick/mana_add