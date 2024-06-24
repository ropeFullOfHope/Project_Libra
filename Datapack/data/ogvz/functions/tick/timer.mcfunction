# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: timer
# Function Name: ogvz:tick/timer
# File Purpose: Counts how long a game lasts in ticks.
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

# Increment timer if game has started, but not yet ended.
execute if score &ogvz ogvz.game.phase matches 1..4 run scoreboard players add &ogvz ogvz.game.time 1
