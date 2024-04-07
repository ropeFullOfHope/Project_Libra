# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: MINECRAFT
# File Name: load
# Function Name: dvz:load
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

function dvz:load/setup
function dvz:load/gamerules
function dvz:load/bossbars
function dvz:load/scoreboards
function dvz:load/teams
execute as @a at @s run function dvz:misc/remove_tags
execute as @a at @s run function dvz:misc/clear_scoreboards
schedule function dvz:schedule/air_toggle_0 1t replace

#~READY TO GO!
