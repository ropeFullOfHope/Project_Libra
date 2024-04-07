# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: health
# Function Name: dvz:dwarves/magic_potion/health
# File Purpose: Heals the player.
# Created By: ropeFullOfHope
# 
# Created On: 2024.01.03
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @s[level=30..] run title @s actionbar [ \
  "", \
  {"text":"[Magic Health Potion]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"30 mana","bold":true,"color":"dark_red"}, \
  {"text":"!","color":"dark_red"} \
]
execute unless entity @s[level=30..] run return 0

# Remove 30 levels.
scoreboard players remove @s DVZ.mana_buildup 30000

title @s actionbar [ \
  "", \
  {"text":"[Magic Health Potion]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 1

effect give @s minecraft:instant_health 1 31