# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: shrine_proximity
# Function Name: dvz:tick/shrine_proximity
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
execute unless entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] run return 0
execute unless entity @e[type=minecraft:marker,tag=shrine,distance=..501] run return 0

scoreboard players set @s dvz.var 0

tag @s add temp_ray_origin

# Create a marker and run a function with it.
execute summon minecraft:marker run execute as @s at @s run function dvz:admin/setup/shrine_proximity_ray

tag @s remove temp_ray_origin

# Display how far the shrine is.
title @s actionbar ["",{"score":{"name":"@s","objective":"dvz.var"},"color":"gold","bold":true}]