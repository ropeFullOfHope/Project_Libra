# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: jump_boost
# Function Name: ogvz:dwarves/magic_potion/jump_boost
# File Purpose: Gives Jump Boost to player.
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
  {"text":"[Magic Jump Boost Potion]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"30 mana","bold":true,"color":"dark_red"}, \
  {"text":"!","color":"dark_red"} \
]
execute unless entity @s[level=30..] run return 0

# Remove 30 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.micromana 30000000

title @s actionbar [ \
  "", \
  {"text":"[Magic Jump Boost Potion]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 1

effect give @s minecraft:jump_boost 20 3
effect give @s minecraft:slow_falling 20 0