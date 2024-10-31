# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: dragon_scale
# Function Name: ogvz:dwarf/item/hero/dragon_warrior/dragon_scale
# File Purpose: Transform into your dragon form.
# Created By: ropeFullOfHope
# 
# Created On: 2024.10.31
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute as @s[tag=ogvz.dwarf.class.hero.dragon_warrior.dragon_form] at @s run return run function ogvz:dwarf/item/hero/dragon_warrior/dragon_scale_remove

execute unless entity @s[level=50..] run title @s actionbar [ \
  "", \
  {"text":"[Dragon Scale]","bold":true,"color":"red"}, \
  {"text":" You need at least ","color":"red"}, \
  {"text":"50 mana","bold":true,"color":"red"}, \
  {"text":"!","color":"red"} \
]
execute unless entity @s[level=50..] run return 0

execute if entity @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Dragon Scale]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.dragon_warrior.dragon_scale.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.dragon_warrior.dragon_scale.cooldown.seconds=1..}] run return 0

title @s actionbar [ \
  "", \
  {"text":"[Dragon Scale]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 50

tag @s add ogvz.dwarf.class.hero.dragon_warrior.dragon_form

# Reset the damage scoreboard used to track how much damage the DW has taken while in dragon form.
scoreboard players set @s ogvz.dragon_warrior.dragon_scale.damage 0

# Add attributes for attack damage and movement speed.
attribute @s minecraft:attack_damage modifier add ogvz.dragon_form.attack_damage 3 add_value
attribute @s minecraft:movement_speed modifier add ogvz.dragon_form.movement_speed 0.2 add_multiplied_total

# Add wings to the chestplate and let dragon warrior glide with them.
item modify entity @s armor.chest ogvz:dragon_warrior_dragon_form_chestplate

# Play a global sound announcing the transformation.
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 1 1 1

particle minecraft:dragon_breath ~ ~0.9 ~ 0 0 0 0.2 100 force
