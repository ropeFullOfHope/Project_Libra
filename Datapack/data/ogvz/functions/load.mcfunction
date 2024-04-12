# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: MINECRAFT
# File Name: load
# Function Name: ogvz:load
# File Purpose: Called on world startup or /reload to load/initialize anything that needs to be loaded/initialized.
# Created By: ropeFullOfHope
# 
# Created On: 2023.06.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: Should contain only function calls.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

function ogvz:load/setup
function ogvz:load/gamerules
function ogvz:load/bossbars
function ogvz:load/scoreboards
function ogvz:load/teams
execute as @a at @s run function ogvz:misc/remove_tags
execute as @a at @s run function ogvz:misc/clear_scoreboards
schedule function ogvz:schedule/air_toggle_0 1t replace

#~READY TO GO!
