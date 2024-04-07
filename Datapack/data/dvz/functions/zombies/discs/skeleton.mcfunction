# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: skeleton
# Function Name: dvz:zombies/disc/skeleton
# File Purpose: Spawn items for the skeleton zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.05
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

clear @s
effect clear @s

effect give @s minecraft:night_vision infinite 0 true
effect give @s minecraft:conduit_power infinite 0 true

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

tag @s add skeleton
tag @s add selected_class
tag @s add suicide_pill

team join z1SKELETON @s

# Equips the skeleton with their armor.
item replace entity @s armor.head with minecraft:skeleton_skull{ \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"head",AttributeName:"generic.armor",Name:"generic.armor",Amount:1.0d,Operation:0,UUID:[I;3,3,3,3]} \
  ] \
}
item replace entity @s armor.chest with minecraft:leather_chestplate{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:11053475}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:11053475}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:11053475}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}

# Gives skeleton all their items.
give @s minecraft:bow{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:power",lvl:4s}, \
    {id:"minecraft:infinity",lvl:1s} \
  ] \
}
give @s minecraft:cooked_beef 64
give @s minecraft:vine 24
give @s minecraft:arrow 1