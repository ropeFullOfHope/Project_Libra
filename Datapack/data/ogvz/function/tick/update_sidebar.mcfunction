# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: update_sidebar
# Function Name: ogvz:tick/update_sidebar
# File Purpose: Updates the sidebar, which counts the amount of dwarves and zombies.
# Created By: ropeFullOfHope
# 
# Created On: 2024.06.24
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Count dwarves.
scoreboard players set Dwarves ogvz.game.player_count 0
execute as @a[tag=ogvz.dwarf] run scoreboard players add Dwarves ogvz.game.player_count 1

# Count zombies.
scoreboard players set Zombies ogvz.game.player_count 0
execute as @a[tag=ogvz.zombie] run scoreboard players add Zombies ogvz.game.player_count 1
