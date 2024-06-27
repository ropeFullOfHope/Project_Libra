# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: micromana_subtract
# Function Name: ogvz:tick/micromana_subtract
# File Purpose: Transforms micromana into regular mana.
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

# Decrease the regular mana buildup scoreboard.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 1

# Repeat function until ogvz.dwarf.mana_buildup.micromana is above -1000000 micromana.
execute as @s[scores={ogvz.dwarf.mana_buildup.micromana=..-1000000}] at @s run function ogvz:tick/micromana_subtract