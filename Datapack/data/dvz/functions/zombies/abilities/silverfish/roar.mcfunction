# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: roar
# Function Name: dvz:zombies/silverfish/roar
# File Purpose: Hatches nearby infested stone.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.23
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.roar.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Roar]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.roar.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.roar.cool=1..}] run return 0

scoreboard players set @s DVZ.roar.cool 50

title @s actionbar [ \
  "", \
  {"text":"[Roar]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 10 2

effect give @s minecraft:glowing 5 0 true

execute as @s at @s if entity @e[type=minecraft:marker,tag=infestation,distance=..16] run function dvz:zombies/silverfish/roar_loop_1