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
execute facing entity @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0

# Measure the distance between the player and the shrine.
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:128}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 128
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:128}}}} at @s run tp @s ^ ^ ^128
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:64}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 64
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:64}}}} at @s run tp @s ^ ^ ^64
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:32}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 32
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:32}}}} at @s run tp @s ^ ^ ^32
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:16}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 16
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:16}}}} at @s run tp @s ^ ^ ^16
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:8}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 8
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:8}}}} at @s run tp @s ^ ^ ^8
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:4}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 4
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:4}}}} at @s run tp @s ^ ^ ^4
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:2}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 2
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:2}}}} at @s run tp @s ^ ^ ^2
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:1}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 1
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:1}}}} at @s run tp @s ^ ^ ^1

# Kill marker.
kill @s
