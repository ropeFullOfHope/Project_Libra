time add 1t

execute store result score &ogvz ogvz.var run time query daytime

execute unless score &ogvz ogvz.var matches 18000 run schedule function ogvz:schedule/time 3t replace