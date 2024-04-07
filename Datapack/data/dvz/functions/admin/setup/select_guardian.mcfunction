# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: select_dragon
# Function Name: dvz:admin/setup/select_dragon
# File Purpose: Selects dragon as boss.
# Created By: ropeFullOfHope
# 
# Created On: 2023.11.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] run return 0

execute as @s at @s run function dvz:admin/setup/deselect_boss

tag @e[type=minecraft:marker,tag=dvz] add boss_guardian
tag @e[type=minecraft:marker,tag=dvz] add boss_selected

bossbar set dvz:boss_timer color blue

execute as @a[tag=admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a[tag=admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"dark_purple"}, \
  {"selector":"@s"}, \
  {"text":" selected ","color":"light_purple"}, \
  {"text":"Guardian","bold":true,"color":"light_purple"}, \
  {"text":" as the boss.","color":"light_purple"} \
]