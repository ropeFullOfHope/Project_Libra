# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: alchemist
# Function Name: dvz:dwarves/book/alchemist
# File Purpose: Gives the player Alchemist book transmutation items.
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

execute store result score @s dvz.var run clear @s minecraft:potion[minecraft:potion_contents="minecraft:mundane"] 0
execute unless entity @s[scores={dvz.var=3..}] run title @s actionbar [ \
  "", \
  {"text":"[Summoning Book]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"3 Mundane Potions","bold":true,"color":"dark_red"}, \
  {"text":"!","color":"dark_red"} \
]
execute unless entity @s[scores={dvz.var=3..}] run return 0

execute unless entity @s[level=30..] run title @s actionbar [ \
  "", \
  {"text":"[Summoning Book]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"30 mana","bold":true,"color":"dark_red"}, \
  {"text":"!","color":"dark_red"} \
]
execute unless entity @s[level=30..] run return 0

clear @s minecraft:potion[minecraft:potion_contents="minecraft:mundane"] 3

# Remove 30 levels.
scoreboard players remove @s dvz.mana_buildup 30000

title @s actionbar [ \
  "", \
  {"text":"[Summoning Book]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.husk.converted_to_zombie player @a ~ ~ ~ 1 1.5

particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

loot give @s loot dvz:dwarves/summoning_book/alchemist