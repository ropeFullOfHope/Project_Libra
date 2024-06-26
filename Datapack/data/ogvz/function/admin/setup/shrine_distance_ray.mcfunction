# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: shrine_proximity_ray
# Function Name: ogvz:admin/setup/shrine_proximity_ray
# File Purpose: Ray casting for shrine proximity.
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

# Face the marker towards the shrine.
execute facing entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~

# Measure the distance between the player and the shrine.
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=256..] run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 256
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=256..] run tp @s ^ ^ ^256
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=128..] run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 128
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=128..] run tp @s ^ ^ ^128
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=64..] run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 64
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=64..] run tp @s ^ ^ ^64
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=32..] run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 32
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=32..] run tp @s ^ ^ ^32
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=16..] run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 16
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=16..] run tp @s ^ ^ ^16
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=8..] run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 8
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=8..] run tp @s ^ ^ ^8
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=4..] run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 4
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=4..] run tp @s ^ ^ ^4
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=2..] run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 2
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=2..] run tp @s ^ ^ ^2
execute at @s if entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,distance=1..] run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 1

# Kill ray.
kill @s