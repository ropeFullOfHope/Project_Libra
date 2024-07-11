# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:load
# File Name: triggers
# Function Name: ogvz:load/triggers
# File Purpose: Sets up the triggers.
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

# doom event - Shows the doom event selected for the current game.
scoreboard objectives add ogvz.trigger.doom_event trigger

# mark for mob trigger - Toggles the player's mark for mob (priority for being selected as boss/zombie).
scoreboard objectives add ogvz.trigger.mark_for_death trigger
