# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/triggers
# File Name: doom_event
# Function Name: ogvz:triggers/doom_event
# File Purpose: Shows the doom event selected for the current game.
# Created By: ropeFullOfHope
# 
# Created On: 2024.07.01
# Last Modified On: 
# Last Modified By: 
#
# Credit to: 
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Reset scoreboard.
scoreboard players set @s ogvz.trigger.doom_event 0
# Re-enable trigger.
scoreboard players enable @s ogvz.trigger.doom_event

# Return if the game is currently in setup phase (0).
execute if score &ogvz ogvz.game.phase matches 0 run return 0

execute as @s at @s run function ogvz:dwarves/doom_event_message
