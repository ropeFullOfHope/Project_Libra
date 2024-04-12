# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: ai_mob_teams
# Function Name: ogvz:tick/ai_mob_teams
# File Purpose: Joins ai mobs to specific mob class teams, so they don't attack their own species.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.07
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

team join z5SILVERFISH @e[type=minecraft:silverfish,tag=!joined]
tag @e[type=minecraft:silverfish,tag=!joined] add joined