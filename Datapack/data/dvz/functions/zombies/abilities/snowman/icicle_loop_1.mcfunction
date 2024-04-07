# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/snowman/icicle
# File Name: icicle_loop
# Function Name: dvz:zombies/snowman/icicle_loop
# File Purpose: Ray scanning for Snowman's icicle.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Stops ray casting if ray is inside a solid block, is too far from the origin or has hit a player.
execute unless block ~ ~ ~ #dvz:go_through run return 0
execute unless entity @a[tag=temp_ray_origin,distance=..32] run return 0
execute if entity @a[tag=temp_hit] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

execute if entity @p[tag=temp_ray_origin,distance=2..] run particle minecraft:snowflake ~ ~ ~ 0.05 0.05 0.05 0.01 3 force

# When ray gets close to a player, it determines their hitbox size depending on their eye height.
# Standing player eye height: 1.62
# Sneaking player eye height: 1.27
# Crawling/Swimming/Flying player eye height: 0.4
execute as @a[tag=!temp_ray_origin,distance=..2,tag=!temp_big_hitbox,tag=!temp_medium_hitbox,tag=!temp_small_hitbox] at @s anchored eyes positioned ^ ^ ^ if entity @s[distance=1.45..] run tag @s add temp_big_hitbox
execute as @a[tag=!temp_ray_origin,distance=..2,tag=!temp_big_hitbox,tag=!temp_medium_hitbox,tag=!temp_small_hitbox] at @s anchored eyes positioned ^ ^ ^ if entity @s[distance=0.84..] run tag @s add temp_medium_hitbox
execute as @a[tag=!temp_ray_origin,distance=..2,tag=!temp_big_hitbox,tag=!temp_medium_hitbox,tag=!temp_small_hitbox] run tag @s add temp_small_hitbox

# Checks if the ray is inside the player's hitbox. Because the smallest collision  check is a 1 * 1 * 1 cube, 2 hitboxes are used where the player's hitbox is exactly inside the intersection between the 2 hitboxes.
# Standing hitbox size: 0.6 * 1.8 * 0.6
# Sneaking hitbox size: 0.6 * 1.5 * 0.6
# Crawling/Swimming/Flying hitbox size: 0.6 * 0.6 * 0.6
execute at @a[tag=!temp_ray_origin,distance=..2,tag=temp_big_hitbox] positioned ~-0.3 ~ ~-0.3 as @e[type=minecraft:marker,tag=ray,dy=0.8] positioned ~-0.4 ~ ~-0.4 if entity @s[dy=0.8] positioned ~0.7 ~ ~0.7 run tag @p add temp_hit
execute at @a[tag=!temp_ray_origin,distance=..2,tag=temp_medium_hitbox] positioned ~-0.3 ~ ~-0.3 as @e[type=minecraft:marker,tag=ray,dy=0.5] positioned ~-0.4 ~ ~-0.4 if entity @s[dy=0.5] positioned ~0.7 ~ ~0.7 run tag @p add temp_hit
execute at @a[tag=!temp_ray_origin,distance=..2,tag=temp_small_hitbox] positioned ~-0.3 ~ ~-0.3 as @e[type=minecraft:marker,tag=ray,dy=0.0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dy=0.0] positioned ~0.7 ~0.7 ~0.7 run tag @p add temp_hit

# Repeat ray casting loop.
execute as @s at @s run function dvz:zombies/snowman/icicle_loop_1