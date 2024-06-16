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

# Create a temporary scoreboard.
scoreboard objectives add temp.air_time dummy

# Get Air value from entity and store it in scoreboard.
execute store result score &ogvz temp.air_time run data get entity @s Air

# Kill entity if Air time is 0
execute if score &ogvz temp.air_time matches 0 run kill @s
execute if score &ogvz temp.air_time matches 0 run return 0

# Subtract 1 from Air time.
scoreboard players remove &ogvz temp.air_time 1

# Set the new Air time of the entity.
execute store result entity @s Air short 1 run scoreboard players get &ogvz temp.air_time

# Remove temporary scoreboard.
scoreboard objectives remove temp.air_time
