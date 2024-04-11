time add 1t

execute store result score &dvz dvz.var run time query daytime

execute unless score &dvz dvz.var matches 18000 run schedule function dvz:schedule/time 3t replace