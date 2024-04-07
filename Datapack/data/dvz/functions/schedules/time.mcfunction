time add 1t

execute store result score &dvz DVZ.result.score run time query daytime

execute unless score &dvz DVZ.result.score matches 18000 run schedule function dvz:schedule/time 3t replace