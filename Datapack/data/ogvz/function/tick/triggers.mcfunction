# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: triggers
# Function Name: ogvz:tick/triggers
# File Purpose: Main branch for all triggers.
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

execute as @s[scores={ogvz.trigger.doom_event=1..}] at @s run function ogvz:triggers/doom_event

execute as @s[scores={ogvz.trigger.mark_for_death=1..}] at @s run function ogvz:triggers/mark_for_death
