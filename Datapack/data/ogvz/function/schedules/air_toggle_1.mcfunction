execute as @e[tag=ogvz.air_toggle,scores={ogvz.air_toggle=1..}] run data modify entity @s Air set value 1s

schedule function ogvz:schedules/air_toggle_0 1t replace
