# Return if game is not in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

# 1 - Build phase
scoreboard players set &ogvz ogvz.game.phase 1

kill @e[type=minecraft:block_display,tag=ogvz.block_display.lobby]
kill @e[type=minecraft:block_display,tag=ogvz.block_display.shrine]
kill @e[type=minecraft:block_display,tag=ogvz.block_display.zombie_spawn]
kill @e[type=minecraft:block_display,tag=ogvz.block_display.boss_spawn]
kill @e[type=minecraft:text_display,tag=ogvz.text_display.zombie_spawn]

scoreboard players set &ogvz ogvz.game.timer 0

execute store result bossbar ogvz:boss_timer value run scoreboard players get &ogvz ogvz.game.timer

bossbar set ogvz:boss_timer visible true

execute as @a at @s run function ogvz:give/other/join_game_magma_cream

title @a subtitle [ \
  "", \
  {"text":"is now starting!","color":"white"} \
]
title @a title [ \
  "", \
  {"text":"<","bold":true,"color":"gold"}, \
  {"text":"OG","bold":true,"color":"dark_aqua"}, \
  {"text":"v","bold":true,"color":"gold"}, \
  {"text":"Z","bold":true,"color":"dark_red"}, \
  {"text":">","bold":true,"color":"gold"} \
]

execute as @a at @s run playsound block.portal.trigger master @s ~ ~ ~ 0.7 1.5

tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"aqua"}, \
  {"selector":"@s","color":"aqua"}, \
  {"text":" started the game!","color":"aqua"} \
]

tellraw @a [ \
  "", \
  {"text":"▶ ","bold":true,"color":"gold"}, \
  {"text":"The game begins!\n","bold":true,"color":"gold"}, \
  {"text":"▶ ","bold":true,"color":"gold"}, \
  {"text":"Right-Click","color":"gold"}, \
  {"text":" your ","color":"yellow"}, \
  {"text":"Magma Cream","color":"gold"}, \
  {"text":" and select your class.","color":"yellow"} \
]
