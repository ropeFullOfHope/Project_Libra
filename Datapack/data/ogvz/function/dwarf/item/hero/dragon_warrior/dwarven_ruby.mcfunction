# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: dwarven_ruby
# Function Name: ogvz:dwarf/heroes/dragon_warrior/dwarven_ruby
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

execute if entity @s[scores={ogvz.dwarven_ruby.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Dwarven Ruby]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.dwarven_ruby.cool"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.dwarven_ruby.cool=1..}] run return 0

# Remove 50 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 50

scoreboard players set @s ogvz.dwarven_ruby.cool 60

title @s actionbar [ \
  "", \
  {"text":"[Dwarven Ruby]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 4 1 0
execute as @a[tag=dwarves,tag=!ogvz.dwarf.class.hero] at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 2 1

scoreboard players add @a[tag=ogvz.dwarf.class.builder] ogvz.dwarf.mana_buildup.mana 50

execute as @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.builder,tag=!ogvz.dwarf.class.hero.dragon_warrior] at @s run function ogvz:dwarf/heroes/items/dragon_warrior/dwarven_ruby_mana_refill