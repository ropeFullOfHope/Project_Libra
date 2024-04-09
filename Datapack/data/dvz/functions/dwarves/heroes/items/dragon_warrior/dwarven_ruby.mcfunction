# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: dwarven_ruby
# Function Name: dvz:dwarves/heroes/dragon_warrior/dwarven_ruby
# File Purpose: Gives mana to all other dwarves.
# Created By: ropeFullOfHope
# 
# Created On: 2024.04.09
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @s[level=50..] run title @s actionbar [ \
  "", \
  {"text":"[Dwarven Ruby]","bold":true,"color":"red"}, \
  {"text":" You need at least ","color":"red"}, \
  {"text":"50 mana","bold":true,"color":"red"}, \
  {"text":"!","color":"red"} \
]
execute unless entity @s[level=50..] run return 0

execute if entity @s[scores={DVZ.dwarven_ruby.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Dwarven Ruby]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"DVZ.dwarven_ruby.cool"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={DVZ.dwarven_ruby.cool=1..}] run return 0

# Remove 50 levels.
scoreboard players remove @s DVZ.mana_buildup 50000

scoreboard players set @s DVZ.dwarven_ruby.cool 60

title @s actionbar [ \
  "", \
  {"text":"[Dwarven Ruby]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 4 1 0
execute as @a[tag=dwarves,tag=!hero] at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 2 1

scoreboard players add @a[tag=builder] DVZ.mana_buildup 50000

execute as @a[tag=dwarves,tag=!builder,tag=!dvz.dwarf.hero.dragon_warrior] at @s run function dvz:dwarves/heroes/items/dragon_warrior/dwarven_ruby_mana_refill