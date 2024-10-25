# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: pearl_rod_teleport
# Function Name: ogvz:dwarves/pearl_rod_teleport
# File Purpose: Teleports the player on top of the shrine (for real this time).
# Created By: ropeFullOfHope
# 
# Created On: 2024.09.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

title @s actionbar [ \
  "", \
  {"text":"[Pearl Rod]","bold":true,"color":"light_purple"}, \
  {"text":" Teleported!","color":"light_purple"} \
]

tag @s remove ogvz.mana.teleporting

attribute @s minecraft:movement_speed modifier remove ogvz.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.teleporting.jump_strength

playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2

particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.25 0.25 0.1 100

execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine,limit=1,sort=nearest] run tp @s ~ ~2 ~

execute at @s run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2

execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.25 0.25 0.25 0.1 100
