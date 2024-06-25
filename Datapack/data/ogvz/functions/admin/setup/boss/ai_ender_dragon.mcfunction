# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: ai_ender_dragon
# Function Name: ogvz:admin/setup/boss/ai_ender_dragon
# File Purpose: Selects ender dragon as boss.
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

# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

# 2 - AI Dragon
scoreboard players set &ogvz ogvz.game.boss 2

bossbar set ogvz:boss_timer color pink

execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"dark_purple"}, \
  {"selector":"@s"}, \
  {"text":" selected ","color":"light_purple"}, \
  {"text":"AI Ender Dragon","bold":true,"color":"light_purple"}, \
  {"text":" as the boss.","color":"light_purple"} \
]