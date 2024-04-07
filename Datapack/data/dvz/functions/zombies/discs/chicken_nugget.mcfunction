# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: chicken_nugget
# Function Name: dvz:zombies/disc/chicken_nugget
# File Purpose: Spawn items for the chicken nugget zombie class.
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

tag @s add chicken_nugget
tag @s add selected_class
tag @s add suicide_pill

team join z4CHICKEN_NUGGET @s

# Equips the chicken nugget with their armor.
item replace entity @s armor.head with minecraft:firework_star{ \
  CustomModelData:0, \
  display:{ \
    Name:'{"text":"Chicken Head","italic":false}' \
  },\
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.chest with minecraft:leather_chestplate{ \
  Unbreakable:1b, \
  HideFlags:66, \
  display:{color:16777215}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"chest",AttributeName:"generic.armor",Name:"generic.armor",Amount:0.0d,Operation:0,UUID:[I;4,4,4,4]} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:66, \
  display:{color:16775239}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"legs",AttributeName:"generic.armor",Name:"generic.armor",Amount:0.0d,Operation:0,UUID:[I;5,5,5,5]} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:66, \
  display:{color:16775239}, \
  Enchantments:[ \
    {id:"minecraft:feather_falling",lvl:10s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"feet",AttributeName:"generic.armor",Name:"generic.armor",Amount:0.0d,Operation:0,UUID:[I;6,6,6,6]} \
  ] \
}

# Gives chicken nugget all their items.
item replace entity @s hotbar.8 with minecraft:warped_fungus_on_a_stick{ \
  CustomModelData:8000, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Descend","italic":false,"color":"dark_gray"}', \
    Lore:[ \
      '{"text":"Hold in off-hand to slowly descend.","color":"blue"}', \
      '{"text":"Held Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7050, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Egg Barrage","italic":false,"color":"gray"}', \
    Lore:[ \
      '{"text":"Fly for a short time.","color":"blue"}', \
      '{"text":"Use while flying to cancel out of it.","color":"blue"}', \
      '{"text":"20 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7051, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Fly","italic":false,"color":"gray"}', \
    Lore:[ \
      '{"text":"Fly for a short time.","color":"blue"}', \
      '{"text":"Use while flying to stop flying.","color":"blue"}', \
      '{"text":"20 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:cooked_chicken 64