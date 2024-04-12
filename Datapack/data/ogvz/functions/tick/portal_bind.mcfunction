# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: portal_bind
# Function Name: ogvz:tick/portal_bind
# File Purpose: Kills the player if they are too far from portal.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.07
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: Only used for Enderman.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Kill palyer unless there is a portal nearby.
execute unless entity @e[type=minecraft:marker,tag=portal,distance=..7] run kill @s