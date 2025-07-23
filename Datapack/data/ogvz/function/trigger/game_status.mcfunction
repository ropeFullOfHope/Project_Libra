# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/triggers
# File Name: doom_event
# Function Name: ogvz:trigger/doom_event
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
scoreboard players set @s game_status 0
# Re-enable trigger.
scoreboard players enable @s game_status

execute as @s at @s run function ogvz:misc/game_status
