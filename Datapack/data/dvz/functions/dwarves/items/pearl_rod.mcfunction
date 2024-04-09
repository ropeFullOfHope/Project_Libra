# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: pearl_rod
# Function Name: dvz:dwarves/pearl_rod
# File Purpose: Teleports the player on top of the shrine.
# Created By: ropeFullOfHope
# 
# Created On: 2024.01.03
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @s[level=50..] run title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"50 mana","bold":true,"color":"dark_red"}, \
  {"text":"!","color":"dark_red"} \
]
execute unless entity @s[level=50..] run return 0

execute if entity @s[scores={DVZ.pearl_rod.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.pearl_rod.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.pearl_rod.cool=1..}] run return 0

scoreboard players set @s DVZ.result.score 0

# Check if the shrine is obstructed.
execute at @e[type=minecraft:marker,tag=shrine,limit=1,sort=nearest] unless block ~-0.5 ~0.5 ~-0.5 #dvz:go_through run scoreboard players set @s DVZ.result.score 1
execute at @e[type=minecraft:marker,tag=shrine,limit=1,sort=nearest] unless block ~-0.5 ~0.5 ~0.5 #dvz:go_through run scoreboard players set @s DVZ.result.score 1
execute at @e[type=minecraft:marker,tag=shrine,limit=1,sort=nearest] unless block ~0.5 ~0.5 ~-0.5 #dvz:go_through run scoreboard players set @s DVZ.result.score 1
execute at @e[type=minecraft:marker,tag=shrine,limit=1,sort=nearest] unless block ~0.5 ~0.5 ~0.5 #dvz:go_through run scoreboard players set @s DVZ.result.score 1
execute at @e[type=minecraft:marker,tag=shrine,limit=1,sort=nearest] unless block ~-0.5 ~1.5 ~-0.5 #dvz:go_through run scoreboard players set @s DVZ.result.score 1
execute at @e[type=minecraft:marker,tag=shrine,limit=1,sort=nearest] unless block ~-0.5 ~1.5 ~0.5 #dvz:go_through run scoreboard players set @s DVZ.result.score 1
execute at @e[type=minecraft:marker,tag=shrine,limit=1,sort=nearest] unless block ~0.5 ~1.5 ~-0.5 #dvz:go_through run scoreboard players set @s DVZ.result.score 1
execute at @e[type=minecraft:marker,tag=shrine,limit=1,sort=nearest] unless block ~0.5 ~1.5 ~0.5 #dvz:go_through run scoreboard players set @s DVZ.result.score 1

execute if entity @s[scores={DVZ.result.score=1}] run title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"dark_red"}, \
  {"text":" The shrine is obstructed!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.result.score=1}] run return 0

# Remove 50 levels.
scoreboard players remove @s DVZ.mana_buildup 50000

scoreboard players set @s DVZ.pearl_rod.cool 60

title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2

particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.25 0.25 0.1 100

execute at @e[type=minecraft:marker,tag=shrine,limit=1,sort=nearest] run tp @s ~ ~ ~

execute at @s run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.25 0.25 0.1 100