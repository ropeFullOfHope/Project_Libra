# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: disarm
# Function Name: dvz:zombies/ocelot/disarm
# File Purpose: Gives Weakness effect to players in front of you.
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

execute unless entity @s[level=40..] run title @s actionbar [ \
  "", \
  {"text":"[Disarm]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"40","bold":true,"color":"dark_red"}, \
  {"text":" mana!","color":"dark_red"} \
]
execute unless entity @s[level=40..] run return 0

experience add @s -40 levels

title @s actionbar [ \
  "", \
  {"text":"[Disarm]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.cat.hiss player @a ~ ~ ~ 1 1

# Gives players in a circle with 2 meter radius positioned 2 meters in front of you the weakness effect.
execute positioned ^ ^ ^2.01 run effect give @a[tag=dwarves,distance=..2] minecraft:weakness 8 1 false
execute positioned ^ ^ ^2.01 run effect give @a[tag=zombies,distance=..2] minecraft:weakness 4 0 false