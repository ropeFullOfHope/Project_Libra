scoreboard objectives add temp.day_time dummy

time add 1t

execute store result score &ogvz temp.day_time run time query daytime

execute unless score &ogvz temp.day_time matches 18000 run schedule function ogvz:schedule/day_time 3t replace

scoreboard objectives remove temp.day_time