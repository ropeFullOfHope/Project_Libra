# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: air_time
# Function Name: ogvz:tick/air_time
# File Purpose: Handles the air time of projectiles (how long they last before being killed).
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.18
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: This is mainly used for small/regular fireballs.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Get Air value from entity and store it in scoreboard.
execute store result score #air_time ogvz.var run data get entity @s Air

# Kill entity if Air time is 0
execute if score #air_time ogvz.var matches 0 run kill @s
execute if score #air_time ogvz.var matches 0 run return 0

# Subtract 1 from Air time.
scoreboard players remove #air_time ogvz.var 1

# Set the new Air time of the entity.
execute store result entity @s Air short 1 run scoreboard players get #air_time ogvz.var