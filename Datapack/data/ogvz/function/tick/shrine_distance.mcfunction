# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: shrine_proximity
# Function Name: ogvz:tick/shrine_proximity
# File Purpose: Displays the distance between the player and the shrine.
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

# Return if game is not in setup phase or if the shrine is too far away.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=..501] run return 0

# Create temporary tag and scoreboard.
tag @s add temp.ray_origin
scoreboard objectives add temp.shrine_distance dummy
scoreboard players set @s temp.shrine_distance 0

# Create a marker and run a function with it.
execute summon minecraft:marker run execute as @s at @s run function ogvz:admin/setup/shrine_distance_ray

# Display how far the shrine is. Red is too close, green is perfect, yellow is too far.
title @s[scores={temp.shrine_distance=..127}] actionbar ["",{"score":{"name":"@s","objective":"temp.shrine_distance"},"color":"red","bold":true}]
title @s[scores={temp.shrine_distance=128..160}] actionbar ["",{"score":{"name":"@s","objective":"temp.shrine_distance"},"color":"green","bold":true}]
title @s[scores={temp.shrine_distance=161..}] actionbar ["",{"score":{"name":"@s","objective":"temp.shrine_distance"},"color":"yellow","bold":true}]

# Remove temporary tag and scoreboard.
tag @s remove temp.ray_origin
scoreboard objectives remove temp.shrine_distance