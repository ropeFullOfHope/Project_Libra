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

schedule clear ogvz:schedules/day_time
schedule clear ogvz:schedules/air_toggle_0
schedule clear ogvz:schedules/air_toggle_1

schedule function ogvz:schedules/day_time 1t replace
schedule function ogvz:schedules/air_toggle_0 1t replace

#~READY TO GO!
say "loaded"