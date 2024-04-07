# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: dash
# Function Name: dvz:zombies/ocelot/dash
# File Purpose: Gives a short duration of speed effect.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.16
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @s[level=20..] run title @s actionbar [ \
  "", \
  {"text":"[Dash]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"20","bold":true,"color":"dark_red"}, \
  {"text":" mana!","color":"dark_red"} \
]
execute unless entity @s[level=20..] run return 0

experience add @s -20 levels

title @s actionbar [ \
  "", \
  {"text":"[Dash]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.cat.purreow player @a ~ ~ ~ 1 1

effect give @s minecraft:speed 3 3 false