# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: start_game
# Function Name: dvz:admin/setup/start_game
# File Purpose: Checks if all conditions for a game start are met and if they are, starts the game.
# Created By: ropeFullOfHope
# 
# Created On: 2023.11.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] run return 0

execute unless entity @e[type=minecraft:marker,tag=lobby] run tellraw @s [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"gray"}, \
  {"text":"Lobby","bold":true,"color":"green"}, \
  {"text":" is missing!","color":"white"} \
]

execute unless entity @e[type=minecraft:marker,tag=shrine] run tellraw @s [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"gray"}, \
  {"text":"Shrine","bold":true,"color":"yellow"}, \
  {"text":" is missing!","color":"white"} \
]

execute unless entity @e[type=minecraft:marker,tag=zombie_spawn] run tellraw @s [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"gray"}, \
  {"text":"Zombie Spawn","bold":true,"color":"red"}, \
  {"text":" is missing!","color":"white"} \
]

execute unless entity @e[type=minecraft:marker,tag=boss_spawn] unless entity @e[type=minecraft:marker,tag=dvz,tag=boss_assassin] run tellraw @s [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"gray"}, \
  {"text":"Boss Spawn","bold":true,"color":"light_purple"}, \
  {"text":" is missing!","color":"white"} \
]

execute unless entity @e[type=minecraft:marker,tag=dvz,tag=boss_selected] run tellraw @s [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"gray"}, \
  {"text":"Boss","bold":true,"color":"light_purple"}, \
  {"text":" hasn't been selected!","color":"white"} \
]

execute unless entity @e[type=minecraft:marker,tag=lobby] run return 0
execute unless entity @e[type=minecraft:marker,tag=shrine] run return 0
execute unless entity @e[type=minecraft:marker,tag=zombie_spawn] run return 0
execute unless entity @e[type=minecraft:marker,tag=boss_spawn] unless entity @e[type=minecraft:marker,tag=dvz,tag=boss_assassin] run return 0
execute unless entity @e[type=minecraft:marker,tag=dvz,tag=boss_selected] run return 0

tag @e[type=minecraft:marker,tag=dvz] remove setup_phase
tag @e[type=minecraft:marker,tag=dvz] add build_phase

kill @e[type=minecraft:block_display,tag=lobby_indicator]
kill @e[type=minecraft:block_display,tag=shrine_indicator]
kill @e[type=minecraft:item_display,tag=zombie_spawn_indicator]
kill @e[type=minecraft:item_display,tag=boss_spawn_indicator]

scoreboard players set &dvz dvz.game.time 0

#scoreboard objectives setdisplay sidebar dvz.game.player_count

execute store result bossbar dvz:boss_timer value run scoreboard players get &dvz dvz.game.time

bossbar set dvz:boss_timer visible true

schedule function dvz:schedule/time 3t replace

execute as @s at @s run function dvz:give/magma_cream

title @a subtitle [ \
  "", \
  {"text":"[","color":"gold"}, \
  {"text":"OG","bold":true,"color":"dark_aqua"}, \
  {"text":"v","bold":true,"color":"gold"}, \
  {"text":"Z","bold":true,"color":"dark_red"}, \
  {"text":"]","color":"gold"}, \
  {"text":" is now starting!","color":"white"} \
]
title @a title {"text":""}

execute as @a at @s run playsound block.portal.trigger master @s ~ ~ ~ 0.7 1.5

tellraw @a[tag=admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"dark_aqua"}, \
  {"selector":"@s"}, \
  {"text":" started the game!","color":"aqua"} \
]

tellraw @a [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The game begins!\n","bold":true,"color":"gold"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" Right-Click","color":"gold"}, \
  {"text":" your ","color":"yellow"}, \
  {"text":"Magma Cream","color":"gold"}, \
  {"text":" and select your class.","color":"yellow"} \
]
