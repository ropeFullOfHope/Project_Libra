# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/golem/fissure
# File Name: fissure_loop
# Function Name: dvz:zombies/golem/fissure_loop
# File Purpose: Ray casting loop for golem's fissure.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.25
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @a[tag=temp_ray_origin,distance=..11] run return 0

# Go up 1 or 2 blocks if the ray marker is inside a block.
execute at @s unless block ~ ~ ~ #dvz:go_through if block ~ ~1 ~ #dvz:go_through run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #dvz:go_through if block ~ ~2 ~ #dvz:go_through run tp @s ~ ~2 ~

# Go down 1 or 2 blocks if there is no solid blocks below the ray marker.
execute at @s if block ~ ~-1 ~ #dvz:go_through unless block ~ ~-2 ~ #dvz:go_through run tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ #dvz:go_through unless block ~ ~-3 ~ #dvz:go_through run tp @s ~ ~-2 ~

# If ray marker is still inside a block or there is no solid block below it exit the function.
execute at @s unless block ~ ~ ~ #dvz:go_through run return 0
execute at @s if block ~ ~-1 ~ #dvz:go_through run return 0

execute at @s positioned ~ ~0 ~ if block ~ ~ ~ #dvz:go_through run function dvz:zombies/golem/fissure_raise
execute at @s positioned ~ ~1 ~ if block ~ ~ ~ #dvz:go_through run function dvz:zombies/golem/fissure_raise
execute at @s positioned ~ ~2 ~ if block ~ ~ ~ #dvz:go_through run function dvz:zombies/golem/fissure_raise

execute at @s run particle minecraft:block minecraft:dirt ~ ~1 ~ 0.25 1 0.25 0 20 normal

execute at @s align xz summon minecraft:marker run tag @s add processed

execute as @s at @s run function dvz:zombies/golem/fissure_search

execute as @s at @s run function dvz:zombies/golem/fissure_loop