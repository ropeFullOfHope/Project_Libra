# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/enderman/teleport_teleport
# File Name: teleport_check
# Function Name: dvz:zombies/enderman/teleport_check
# File Purpose: A check for if the player can safely teleport.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.29
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if block ~ ~ ~ #dvz:go_through if block ~ ~1 ~ #dvz:go_through unless block ~ ~-1 ~ #dvz:go_through align xyz positioned ~0.5 ~0.1 ~0.5 run tp @s ~ ~ ~
execute if block ~ ~ ~ #dvz:go_through if block ~ ~1 ~ #dvz:go_through unless block ~ ~-1 ~ #dvz:go_through run title @s actionbar [ \
  "", \
  {"text":"[Teleport]","bold":true,"color":"dark_red"}, \
  {"text":" Poof!","color":"dark_red"} \
]
execute if block ~ ~ ~ #dvz:go_through if block ~ ~1 ~ #dvz:go_through unless block ~ ~-1 ~ #dvz:go_through at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
execute if block ~ ~ ~ #dvz:go_through if block ~ ~1 ~ #dvz:go_through unless block ~ ~-1 ~ #dvz:go_through run scoreboard players set @s DVZ.teleport.cool 20
execute if block ~ ~ ~ #dvz:go_through if block ~ ~1 ~ #dvz:go_through unless block ~ ~-1 ~ #dvz:go_through run return 1
return 0