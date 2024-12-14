execute positioned ^ ^ ^16 run setblock ~ ~ ~ minecraft:red_concrete
execute positioned ^ ^ ^32 run setblock ~ ~ ~ minecraft:orange_concrete
execute positioned ^ ^ ^48 run setblock ~ ~ ~ minecraft:yellow_concrete
execute positioned ^ ^ ^64 run setblock ~ ~ ~ minecraft:lime_concrete
execute positioned ^ ^ ^80 run setblock ~ ~ ~ minecraft:light_blue_concrete
execute positioned ^ ^ ^96 run setblock ~ ~ ~ minecraft:blue_concrete
execute positioned ^ ^ ^112 run setblock ~ ~ ~ minecraft:purple_concrete
execute positioned ^ ^ ^128 run setblock ~ ~ ~ minecraft:magenta_concrete
execute positioned ^ ^ ^144 run setblock ~ ~ ~ minecraft:red_concrete
execute positioned ^ ^ ^160 run setblock ~ ~ ~ minecraft:orange_concrete

tp @s ~ ~ ~ ~0.1 ~

scoreboard players add &temp temp.circle 1

execute if score &temp temp.circle matches ..3600 as @s at @s run function ogvz:admin/tools/circle_loop
