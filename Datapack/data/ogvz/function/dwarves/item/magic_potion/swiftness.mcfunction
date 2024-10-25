# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: swiftness
# Function Name: ogvz:dwarves/magic_potion/swiftness
# File Purpose: Gives Speed to player.
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

execute unless entity @s[level=20..] run title @s actionbar [ \
  "", \
  {"text":"[Magic Swiftness Potion]","bold":true,"color":"red"}, \
  {"text":" You need at least ","color":"red"}, \
  {"text":"20 mana","bold":true,"color":"red"}, \
  {"text":"!","color":"red"} \
]
execute unless entity @s[level=20..] run return 0

# Remove 20 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 20

title @s actionbar [ \
  "", \
  {"text":"[Magic Swiftness Potion]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 1

effect give @s minecraft:speed 15 2
effect give @s minecraft:dolphins_grace 15 0