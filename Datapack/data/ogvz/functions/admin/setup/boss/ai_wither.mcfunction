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

# 4 - AI Wither
scoreboard players set &ogvz ogvz.game.boss 4

bossbar set dvz:boss_timer color purple

execute as @a[tag=admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a[tag=admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"dark_purple"}, \
  {"selector":"@s"}, \
  {"text":" selected ","color":"light_purple"}, \
  {"text":"AI Wither","bold":true,"color":"light_purple"}, \
  {"text":" as the boss.","color":"light_purple"} \
]