summon minecraft:silverfish

scoreboard players remove @s ogvz.silverfish.silverfish_egg.count 1

execute as @s[scores={ogvz.silverfish.silverfish_egg.count=1..}] at @s run function ogvz:zombie/ability/silverfish/roar_loop_2