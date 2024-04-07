# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: pillager
# Function Name: dvz:zombies/disc/pillager
# File Purpose: Spawn items for the pillager zombie class.
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

tag @s add pillager
tag @s add selected_class
tag @s add suicide_pill

team join z1PILLAGER @s

# Equips the pillager with their armor.
item replace entity @s armor.head with minecraft:firework_star{ \
  CustomModelData:0, \
  display:{ \
    Name:'{"text":"Pillager Head","italic":false}' \
  }, \
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
  display:{color:4924973}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:1976874}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:6239777}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}

# Gives pillager all their items.
loot give @s loot dvz:zombies/pillager_crossbow
give @s minecraft:cooked_beef 64
give @s minecraft:vine 24
give @s minecraft:arrow 1
give @s minecraft:firework_rocket{ \
  HideFlags:32, \
  display:{ \
    Lore:[ \
      '{"text":"Flight Duration: 1","italic":false,"color":"gray"}', \
      '{"text":"Firework Stars: 7","italic":false,"color":"gray"}' \
    ] \
  }, \
  Fireworks:{ \
    Flight:1, \
    Explosions:[ \
      {Type:0,Colors:[I;16750848]}, \
      {Type:0,Colors:[I;16750848]}, \
      {Type:0,Colors:[I;16750848]}, \
      {Type:0,Colors:[I;16750848]}, \
      {Type:0,Colors:[I;16750848]}, \
      {Type:0,Colors:[I;16750848]}, \
      {Type:0,Colors:[I;16750848]} \
    ] \
  } \
} 16