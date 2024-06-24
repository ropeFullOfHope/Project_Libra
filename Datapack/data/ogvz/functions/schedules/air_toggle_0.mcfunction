execute as @e[tag=ogvz.air_toggle,scores={ogvz.air_toggle=1..}] run data modify entity @s Air set value 0s

execute as @e[tag=ogvz.air_toggle,scores={ogvz.air_toggle=1..}] run scoreboard players remove @s ogvz.air_toggle 1

schedule function ogvz:schedule/air_toggle_1 1t replace
