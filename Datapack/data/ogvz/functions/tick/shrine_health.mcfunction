# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: shrine_health
# Function Name: ogvz:tick/shrine_health
# File Purpose: Calculates the shrine health.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.08
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Kill all shrine block markers that are no longer inside a gold block.
execute as @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] at @s unless block ~ ~ ~ minecraft:gold_block run kill @s

# Update shrine health scoreboard.
scoreboard players set &ogvz ogvz.game.shrine_health 0
execute as @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] run scoreboard players add &ogvz ogvz.game.shrine_health 1