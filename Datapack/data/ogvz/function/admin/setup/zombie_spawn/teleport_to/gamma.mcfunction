# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

execute at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma] run tp @s ~ ~ ~
