# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: blacksmith
# Function Name: dvz:dwarves/book/blacksmith
# File Purpose: Gives the player Blacksmith book transmutation items.
# Created By: ropeFullOfHope
# 
# Created On: 2023.01.02
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute store result score @s ogvz.var run clear @s minecraft:clock 0
execute unless entity @s[scores={ogvz.var=5..}] run title @s actionbar [ \
  "", \
  {"text":"[Summoning Book]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"3 Clocks","bold":true,"color":"dark_red"}, \
  {"text":"!","color":"dark_red"} \
]
execute unless entity @s[scores={ogvz.var=5..}] run return 0

execute unless entity @s[level=30..] run title @s actionbar [ \
  "", \
  {"text":"[Summoning Book]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"30 mana","bold":true,"color":"dark_red"}, \
  {"text":"!","color":"dark_red"} \
]
execute unless entity @s[level=30..] run return 0

clear @s minecraft:clock 5

# Remove 30 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup 30000

title @s actionbar [ \
  "", \
  {"text":"[Summoning Book]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:block.smithing_table.use player @a ~ ~ ~ 1 1

particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

loot give @s loot dvz:dwarves/summoning_book/blacksmith