# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: invisibility
# Function Name: dvz:zombies/chillager/invisibility
# File Purpose: Clears armor and grants invisibility.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.08
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

title @s actionbar [ \
  "", \
  {"text":"[Invisibility]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 1 0.5

particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 1 50

# Clear armor.
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air

effect give @s minecraft:invisibility 60 0

scoreboard players set @s DVZ.invisibility.tick 1200

clear @s minecraft:carrot_on_a_stick{CustomModelData:7070} 1