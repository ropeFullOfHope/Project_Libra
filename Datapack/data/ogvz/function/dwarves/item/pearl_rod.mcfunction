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
  {"score":{"name":"@s","objective":"ogvz.pearl_rod.cool"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.dwarf.pearl_rod.cooldown.seconds=1..}] run return 0

scoreboard objectives add temp.shrine_spawn_obstructions dummy

scoreboard players set @s temp.shrine_spawn_obstructions 0

# Check if the shrine is obstructed.
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~-0.5 ~0.5 ~-0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~-0.5 ~0.5 ~0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~0.5 ~0.5 ~-0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~0.5 ~0.5 ~0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~-0.5 ~1.5 ~-0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~-0.5 ~1.5 ~0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~0.5 ~1.5 ~-0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] unless block ~0.5 ~1.5 ~0.5 #ogvz:go_through run scoreboard players set @s temp.shrine_spawn_obstructions 1

execute if entity @s[scores={temp.shrine_spawn_obstructions=1}] run title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"red"}, \
  {"text":" The shrine is obstructed!","color":"red"} \
]
execute if entity @s[scores={temp.shrine_spawn_obstructions=1}] run return run scoreboard objectives remove temp.shrine_spawn_obstructions

# Check if the shrine is webbed.
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~-0.5 ~0.5 ~-0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~-0.5 ~0.5 ~0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~0.5 ~0.5 ~-0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~0.5 ~0.5 ~0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~-0.5 ~1.5 ~-0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~-0.5 ~1.5 ~0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~0.5 ~1.5 ~-0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] if block ~0.5 ~1.5 ~0.5 minecraft:cobweb run scoreboard players set @s temp.shrine_spawn_obstructions 1

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
  {"text":"[Pearl Rod]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2

particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.25 0.25 0.1 100

execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] run tp @s ~ ~ ~

execute at @s run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.25 0.25 0.1 100

scoreboard objectives remove temp.shrine_spawn_obstructions