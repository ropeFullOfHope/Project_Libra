# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

kill @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma]
kill @e[type=minecraft:block_display,tag=ogvz.block_display.zombie_spawn.gamma]
kill @e[type=minecraft:text_display,tag=ogvz.text_display.zombie_spawn.gamma]

execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"red"}, \
  {"selector":"@s","color":"red"}, \
  {"text":" removed the Zombie Spawn Location Gamma.","color":"red"} \
]
