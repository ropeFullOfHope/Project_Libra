# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: select_dragon
# Function Name: ogvz:admin/setup/select_dragon
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

# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

# 6 - Elder Guardian
scoreboard players set &ogvz ogvz.game.boss 6

bossbar set ogvz:boss_timer color blue

execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"dark_purple"}, \
  {"selector":"@s"}, \
  {"text":" selected ","color":"light_purple"}, \
  {"text":"Guardian","bold":true,"color":"light_purple"}, \
  {"text":" as the boss.","color":"light_purple"} \
]