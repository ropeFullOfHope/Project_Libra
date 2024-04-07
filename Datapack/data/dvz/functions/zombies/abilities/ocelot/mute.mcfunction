# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: mute
# Function Name: dvz:zombies/ocelot/mute
# File Purpose: Gives Silence custom effect to players around you.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.01
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @s[level=60..] run title @s actionbar [ \
  "", \
  {"text":"[Mute]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"60","bold":true,"color":"dark_red"}, \
  {"text":" mana!","color":"dark_red"} \
]
execute unless entity @s[level=60..] run return 0

experience add @s -60 levels

title @s actionbar [ \
  "", \
  {"text":"[Mute]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.cat.hiss player @a ~ ~ ~ 1 1.5

# Gives players 4 meters around you the silence custom effect.
effect give @a[tag=dwarves,distance=..4] minecraft:bad_omen 30 0 false
effect give @a[tag=zombies,distance=..4] minecraft:bad_omen 15 0 false