# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: 
# Function Name: 
# File Purpose: 
# Created By: ropeFullOfHope
# 
# Created On: 2024.04.09
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute as @s[level=100..] run return 0

# This is a bit hacky, but it sets the player's mana to 100 while still updating the mana bar.
experience set @s 99 levels
scoreboard players set @s dvz.dwarf.mana_buildup 1000