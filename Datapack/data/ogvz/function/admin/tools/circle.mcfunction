setblock ~ ~-1 ~ minecraft:white_concrete

execute positioned ~ ~-1 ~ align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:marker run tag @s add temp.circle

scoreboard objectives add temp.circle dummy

scoreboard players set &temp temp.circle 0

execute as @n[type=minecraft:marker,tag=temp.circle] at @s run function ogvz:temp/circle_loop

scoreboard objectives remove temp.circle

kill @e[type=minecraft:marker,tag=temp.circle]
