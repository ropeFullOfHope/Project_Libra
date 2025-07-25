# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: strength
# Function Name: ogvz:dwarf/magic_potion/strength
# File Purpose: Gives Strength to player.
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
  {"text":"[Magic Strength Potion]","bold":true,"color":"red"}, \
  {"text":" You need at least ","color":"red"}, \
  {"text":"20 mana","bold":true,"color":"red"}, \
  {"text":"!","color":"red"} \
]
execute unless entity @s[level=20..] run return 0

# Remove 20 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 20

title @s actionbar [ \
  "", \
  {"text":"[Magic Strength Potion]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 1

effect give @s minecraft:strength 15 0
