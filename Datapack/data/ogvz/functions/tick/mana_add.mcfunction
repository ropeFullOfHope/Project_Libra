# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: mana_add
# Function Name: ogvz:tick/mana_add
# File Purpose: Gives levels (mana) to a player.
# Created By: ropeFullOfHope
# 
# Created On: 2023.12.01
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: 1,000,000 micromana = 1 mana
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Remove 1000000 micromana from the score.
scoreboard players remove @s ogvz.dwarf.mana_buildup 1000000

# The hard mana cap is set at 9999 mana.
experience add @s[level=..9998] 1 levels

# Update the exp bar if all the mana buildup has been added.
execute as @s[scores={ogvz.dwarf.mana_buildup=..999999}] at @s run function ogvz:misc/mana_bar

# Suppress the level up ding sound.
stopsound @a[distance=..17] player minecraft:entity.player.levelup

# Repeat function until ogvz.dwarf.mana_buildup is below 1000000 micromana.
execute as @s[scores={ogvz.dwarf.mana_buildup=1000000..}] at @s run function ogvz:tick/mana_add