# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: cloak_of_shadows
# Function Name: ogvz:dwarf/item/hero/assassin_slayer/cloak_of_shadows
# File Purpose: Gives invisibility to the player and their armor.
# Created By: ropeFullOfHope
# 
# Created On: 2024.10.26
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute as @s[tag=ogvz.dwarf.class.hero.assassin_slayer.invisible] at @s run return run function ogvz:dwarf/item/hero/assassin_slayer/cloak_of_shadows_cancel

execute if entity @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Cloak of Shadows]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=1..}] run return 0

execute unless entity @s[level=1..] run title @s actionbar [ \
  "", \
  {"text":"[Cloak of Shadows]","bold":true,"color":"red"}, \
  {"text":" You need at least ","color":"red"}, \
  {"text":"1 mana","bold":true,"color":"red"}, \
  {"text":"!","color":"red"} \
]
execute unless entity @s[level=1..] run return 0

title @s actionbar [ \
  "", \
  {"text":"[Cloak of Shadows]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

tag @s add ogvz.dwarf.class.hero.assassin_slayer.invisible

effect give @s minecraft:invisibility infinite 0

# Replace the textures of the armor with a blank ones.
item modify entity @s armor.head ogvz:remove_item_model_head
item modify entity @s armor.chest ogvz:remove_item_model_chest
item modify entity @s armor.legs ogvz:remove_item_model_legs
item modify entity @s armor.feet ogvz:remove_item_model_feet

playsound minecraft:entity.breeze.inhale player @a ~ ~ ~ 1 0.5

particle minecraft:spit ~ ~1 ~ 0 0 0 0.2 50
