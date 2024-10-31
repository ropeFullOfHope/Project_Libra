# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: dwarven_ruby
# Function Name: ogvz:dwarf/item/hero/dragon_warrior/dwarven_ruby
# File Purpose: Gives mana to all other dwarves.
# Created By: ropeFullOfHope
# 
# Created On: 2024.10.28
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @s[level=30..] run title @s actionbar [ \
  "", \
  {"text":"[Dwarven Ruby]","bold":true,"color":"red"}, \
  {"text":" You need at least ","color":"red"}, \
  {"text":"30 mana","bold":true,"color":"red"}, \
  {"text":"!","color":"red"} \
]
execute unless entity @s[level=30..] run return 0

execute if entity @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Dwarven Ruby]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds=1..}] run return 0

scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 30

scoreboard players set @s ogvz.dragon_warrior.dwarven_ruby.cooldown.seconds 60

title @s actionbar [ \
  "", \
  {"text":"[Dwarven Ruby]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 4 1 0
execute as @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero] at @s run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 2 1

# Builders receive 50 mana, non-builders receive 100 mana.
scoreboard players add @a[tag=ogvz.dwarf.class.builder] ogvz.dwarf.mana_buildup.mana 50
scoreboard players add @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.builder,tag=!ogvz.dwarf.class.hero.dragon_warrior] ogvz.dwarf.mana_buildup.mana 100
