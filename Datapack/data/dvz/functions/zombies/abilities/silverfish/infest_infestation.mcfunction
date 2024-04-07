# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/silverfish/infest
# File Name: infest_infestation
# Function Name: dvz:zombies/silverfish/infest_infestation
# File Purpose: Replace builder blocks with infested stone.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.22
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

title @s actionbar [ \
  "", \
  {"text":"[Infest]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.silverfish.step player @a ~ ~ ~ 1 1

clear @s minecraft:heart_of_the_sea{CustomModelData:1000} 1

execute summon minecraft:marker run tag @s add infestation

execute if block ~1 ~ ~ #dvz:go_through run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:infested_stone replace #dvz:dwarf_blocks
execute if block ~-1 ~ ~ #dvz:go_through run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:infested_stone replace #dvz:dwarf_blocks
execute if block ~ ~1 ~ #dvz:go_through run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:infested_stone replace #dvz:dwarf_blocks
execute if block ~ ~-1 ~ #dvz:go_through run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:infested_stone replace #dvz:dwarf_blocks
execute if block ~ ~ ~1 #dvz:go_through run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:infested_stone replace #dvz:dwarf_blocks
execute if block ~ ~ ~-1 #dvz:go_through run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:infested_stone replace #dvz:dwarf_blocks