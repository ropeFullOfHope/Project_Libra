# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: update_bossbars
# Function Name: ogvz:tick/update_bossbars
# File Purpose: Updates the values of each bossbar.
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

execute store result bossbar ogvz:shrine_health value run scoreboard players get &ogvz ogvz.game.shrine_health

execute store result bossbar ogvz:boss_timer value run scoreboard players get &ogvz ogvz.game.timer

