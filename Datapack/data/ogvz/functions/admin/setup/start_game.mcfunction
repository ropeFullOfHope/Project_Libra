# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: start_game
# Function Name: ogvz:admin/setup/start_game
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

# Return if game is not in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.lobby] run tellraw @s [ \
  "", \
  {"text":"SETUP ERROR: ","bold":true,"color":"dark_green"}, \
  {"text":"Lobby","bold":true,"color":"green"}, \
  {"text":" is missing!","color":"green"} \
]

execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine] run tellraw @s [ \
  "", \
  {"text":"SETUP ERROR: ","bold":true,"color":"gold"}, \
  {"text":"Shrine","bold":true,"color":"yellow"}, \
  {"text":" is missing!","color":"yellow"} \
]

execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] run tellraw @s [ \
  "", \
  {"text":"SETUP ERROR: ","bold":true,"color":"gold"}, \
  {"text":"Shrine Block Markers","bold":true,"color":"yellow"}, \
  {"text":" are missing!","color":"yellow"} \
]

execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] run tellraw @s [ \
  "", \
  {"text":"SETUP ERROR: ","bold":true,"color":"dark_red"}, \
  {"text":"Zombie Spawn","bold":true,"color":"red"}, \
  {"text":" is missing!","color":"red"} \
]

# Check if boss spawn exists, unless the boss selected is the assassin (5).
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.boss_spawn] unless score &ogvz ogvz.game.boss matches 5 run tellraw @s [ \
  "", \
  {"text":"SETUP ERROR: ","bold":true,"color":"dark_purple"}, \
  {"text":"Boss Spawn","bold":true,"color":"light_purple"}, \
  {"text":" is missing!","color":"light_purple"} \
]

execute if score &ogvz ogvz.game.boss matches 0 run tellraw @s [ \
  "", \
  {"text":"SETUP ERROR: ","bold":true,"color":"dark_purple"}, \
  {"text":"Boss","bold":true,"color":"light_purple"}, \
  {"text":" hasn't been selected!","color":"light_purple"} \
]

execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.lobby] run return 0
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine] run return 0
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] run return 0
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] run return 0
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.boss_spawn] unless score &ogvz ogvz.game.boss matches 5 run return 0
execute if score &ogvz ogvz.game.boss matches 0 run return 0

# 1 - Build phase
scoreboard players set &ogvz ogvz.game.phase 1

kill @e[type=minecraft:block_display,tag=ogvz.block_display.lobby]
kill @e[type=minecraft:block_display,tag=ogvz.block_display.shrine]
kill @e[type=minecraft:block_display,tag=ogvz.block_display.zombie_spawn]
kill @e[type=minecraft:block_display,tag=ogvz.block_display.boss_spawn]

scoreboard players set &ogvz ogvz.game.timer 0

execute store result bossbar ogvz:boss_timer value run scoreboard players get &ogvz ogvz.game.timer

bossbar set ogvz:boss_timer visible true

schedule function ogvz:schedule/day_time 3t replace

execute as @a at @s run function ogvz:give/magma_cream

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
