# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: mana_add
# Function Name: dvz:tick/mana_add
# File Purpose: Gives levels (mana) to a player.
# Created By: ropeFullOfHope
# 
# Created On: 2023.12.01
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: 1000 millimana = 1 mana
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Remove the 1000 millimana from the score.
scoreboard players remove @s ogvz.dwarf.mana_buildup 1000

# The mana cap is set at 9999 mana.
experience add @s[level=..9998] 1 levels

# Update the exp bar if all the mana buildup has been added.
execute as @s[scores={ogvz.dwarf.mana_buildup=..999}] at @s run function dvz:misc/mana_bar

# Suppress the level up ding sound.
stopsound @a[distance=..17] player minecraft:entity.player.levelup

# Repeat function until ogvz.dwarf.mana_buildup is below 1000 millimana.
execute as @s[scores={ogvz.dwarf.mana_buildup=1000..}] at @s run function dvz:tick/mana_add