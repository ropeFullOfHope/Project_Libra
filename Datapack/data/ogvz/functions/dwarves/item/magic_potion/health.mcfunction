# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: health
# Function Name: ogvz:dwarves/magic_potion/health
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

execute if entity @s[scores={ogvz.dwarf.magic_health_potion.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Magic Health Potion]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"ogvz.dwarf.magic_health_potion.cooldown.seconds"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={ogvz.dwarf.magic_health_potion.cooldown.seconds=1..}] run return 0

# Remove 30 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 30

scoreboard players set @s ogvz.dwarf.magic_health_potion.cooldown.seconds 20

title @s actionbar [ \
  "", \
  {"text":"[Magic Health Potion]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 1

effect give @s minecraft:instant_health 1 31