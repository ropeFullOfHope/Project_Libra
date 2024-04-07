# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: wolf
# Function Name: dvz:zombies/disc/wolf
# File Purpose: Spawn items for the wolf zombie class.
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

# Gives wolf their permanent effects
effect give @s minecraft:speed infinite 1 true
effect give @s minecraft:jump_boost infinite 1 true

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

tag @s add wolf
tag @s add selected_class
tag @s add suicide_pill

team join z3WOLF @s

# Equips the wolf with their armor.
item replace entity @s armor.head with minecraft:firework_star{ \
  CustomModelData:0, \
  display:{ \
    Name:'{"text":"Wolf Head","italic":false}' \
  }, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"head",AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0d,Operation:0,UUID:[I;3,3,3,3]} \
  ] \
}
item replace entity @s armor.chest with minecraft:leather_chestplate{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:13881295}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:2s}, \
    {id:"minecraft:projectile_protection",lvl:2s}, \
    {id:"minecraft:blast_protection",lvl:2s}, \
    {id:"minecraft:fire_protection",lvl:2s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"chest",AttributeName:"generic.armor",Name:"generic.armor",Amount:5.0d,Operation:0,UUID:[I;4,4,4,4]} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:13289416}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:1s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"legs",AttributeName:"generic.armor",Name:"generic.armor",Amount:4.0d,Operation:0,UUID:[I;5,5,5,5]} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:10459798}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:1s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"feet",AttributeName:"generic.armor",Name:"generic.armor",Amount:1.0d,Operation:0,UUID:[I;6,6,6,6]} \
  ] \
}

# Gives wolf all their items.
give @s minecraft:iron_sword{ \
  Unbreakable:1b, \
  wolf_rally:1, \
  Enchantments:[ \
    {id:"minecraft:sharpness",lvl:3s} \
  ], \
  display:{ \
    Lore:[ \
      '{"text":"Wolf Rally","italic":false,"color":"gray"}', \
      '{"text":""}', \
      '{"text":"Wolf Rally","underlined":true,"italic":false,"color":"light_purple"}', \
      '{"text":"Strenghtens nearby Wolves when you hit a","color":"light_purple"}', \
      '{"text":"Player.","color":"light_purple"}' \
    ] \
  } \
}
give @s minecraft:cooked_beef 64
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7030, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Howl","italic":false,"color":"gray"}', \
    Lore:[ \
      '{"text":"Summons a pack of Wolves to fight for","color":"blue"}', \
      '{"text":"you.","color":"blue"}', \
      '{"text":"Single-use item","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}