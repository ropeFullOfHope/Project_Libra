execute at @r[tag=ogvz.dwarf,distance=..64] run summon minecraft:silverfish ~ ~ ~

execute unless entity @a[tag=ogvz.dwarf,distance=..64] run summon minecraft:silverfish ~ ~ ~

scoreboard players remove @s temp.infested_block_count 1

execute as @s[scores={temp.infested_block_count=1..}] at @s run function ogvz:zombie/ability/silverfish/roar_loop