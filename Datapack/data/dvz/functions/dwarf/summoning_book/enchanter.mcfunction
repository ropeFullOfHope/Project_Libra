# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: enchanter
# Function Name: dvz:dwarves/book/enchanter
# File Purpose: Gives the player Enchanter book transmutation items.
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

execute store result score @s dvz.var run clear @s minecraft:emerald 0
execute unless entity @s[scores={dvz.var=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Summoning Book]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"1 Emerald","bold":true,"color":"dark_red"}, \
  {"text":"!","color":"dark_red"} \
]
execute unless entity @s[scores={dvz.var=1..}] run return 0

clear @s minecraft:emerald 1

title @s actionbar [ \
  "", \
  {"text":"[Summoning Book]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 1

particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

loot give @s loot dvz:dwarves/summoning_book/enchanter