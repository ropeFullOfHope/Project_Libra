# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: pearl_rod
# Function Name: ogvz:dwarves/pearl_rod
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

execute as @s[tag=ogvz.mana.teleporting] at @s run return run function ogvz:dwarves/item/pearl_rod_cancel

execute unless entity @s[level=50..] run title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"red"}, \
  {"text":" You need at least ","color":"red"}, \
  {"text":"50 mana","bold":true,"color":"red"}, \
  {"text":"!","color":"red"} \
]
execute unless entity @s[level=50..] run return 0

execute if entity @s[scores={ogvz.dwarf.pearl_rod.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.dwarf.pearl_rod.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.dwarf.pearl_rod.cooldown.seconds=1..}] run return 0

scoreboard objectives add temp.shrine_spawn_obstructions dummy

scoreboard players set @s temp.shrine_spawn_obstructions 0

# Check if the shrine is obstructed.
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~-0.5 ~1.5 ~-0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~-0.5 ~1.5 ~0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~0.5 ~1.5 ~-0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~0.5 ~1.5 ~0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~-0.5 ~2.5 ~-0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~-0.5 ~2.5 ~0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~0.5 ~2.5 ~-0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~0.5 ~2.5 ~0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1

execute if entity @s[scores={temp.shrine_spawn_obstructions=1}] run title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"red"}, \
  {"text":" The shrine is obstructed!","color":"red"} \
]
execute if entity @s[scores={temp.shrine_spawn_obstructions=1}] run return run scoreboard objectives remove temp.shrine_spawn_obstructions

# Check if the shrine is webbed.
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~-0.5 ~1.5 ~-0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~-0.5 ~1.5 ~0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~0.5 ~1.5 ~-0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~0.5 ~1.5 ~0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~-0.5 ~2.5 ~-0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~-0.5 ~2.5 ~0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~0.5 ~2.5 ~-0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~0.5 ~2.5 ~0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1

execute if entity @s[scores={temp.shrine_spawn_obstructions=1}] run title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"red"}, \
  {"text":" The shrine is webbed!","color":"red"} \
]
execute if entity @s[scores={temp.shrine_spawn_obstructions=1}] run return run scoreboard objectives remove temp.shrine_spawn_obstructions

# Remove 50 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 50

scoreboard players set @s ogvz.dwarf.pearl_rod.cooldown.seconds 60

title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"light_purple"}, \
  {"text":" Teleporting...","color":"light_purple"} \
]

playsound minecraft:block.portal.trigger player @a ~ ~ ~ 1 0.8

tag @s add ogvz.mana.teleporting

scoreboard players set @s ogvz.dwarf.pearl_rod.warmup.seconds 5

attribute @s minecraft:movement_speed modifier add ogvz.teleporting.movement_speed -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ogvz.teleporting.jump_strength -1 add_multiplied_total

effect give @s minecraft:nausea 8 0 true

scoreboard objectives remove temp.shrine_spawn_obstructions