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

execute as @s[scores={admin_handbook=1..}] at @s run function ogvz:trigger/admin_handbook

execute as @s[scores={game_status=1..}] at @s run function ogvz:trigger/game_status

execute as @s[scores={doom_event=1..}] at @s run function ogvz:trigger/doom_event

#execute as @s[scores={mark_for_death=1..}] at @s run function ogvz:trigger/mark_for_death
