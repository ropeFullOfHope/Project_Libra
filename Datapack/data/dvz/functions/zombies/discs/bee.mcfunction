# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: bee
# Function Name: dvz:zombies/disc/bee
# File Purpose: Spawn items for the bee zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.09
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

tag @s add bee
tag @s add selected_class
tag @s add suicide_pill

team join z4BEE @s

# Equips the bee with their armor.
item replace entity @s armor.head with minecraft:firework_star{ \
  CustomModelData:0, \
  display:{ \
    Name:'{"text":"Bee Head","italic":false}' \
  },\
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.chest with minecraft:leather_chestplate{ \
  Unbreakable:1b, \
  HideFlags:66, \
  display:{color:6238757}, \
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
  display:{color:15582019}, \
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
  display:{color:6238757}, \
  Enchantments:[ \
    {id:"minecraft:feather_falling",lvl:10s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"feet",AttributeName:"generic.armor",Name:"generic.armor",Amount:0.0d,Operation:0,UUID:[I;6,6,6,6]} \
  ] \
}

# Gives bee all their items.
item replace entity @s hotbar.8 with minecraft:warped_fungus_on_a_stick{ \
  CustomModelData:8001, \
  display:{ \
    Name:'{"text":"Ascend/Descend","italic":false,"color":"gold"}', \
    Lore:[ \
      '{"text":"Hold in off-hand to slowly ascend.","color":"blue"}', \
      '{"text":"Sneak to slowly descend instead.","color":"blue"}', \
      '{"text":"Held Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7080, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Honey","italic":false,"color":"yellow"}', \
    Lore:[ \
      '{"text":"Shoot a ray that overheals zombies near","color":"blue"}', \
      '{"text":"its area of effect.","color":"blue"}', \
      '{"text":"10 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7081, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Pollen Bomb","italic":false,"color":"yellow"}', \
    Lore:[ \
      '{"text":"Throw a ball of pollen that creates a","color":"blue"}', \
      '{"text":"long lasting healing zone for zombies.","color":"blue"}', \
      '{"text":"20 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:cooked_beef 64
give @s minecraft:bow{ \
  Unbreakable:1b, \
  venom:1, \
  Enchantments:[ \
    {id:"minecraft:infinity",lvl:1s} \
  ], \
  display:{ \
    Name:'{"text":"Stinger Sling","italic":false}', \
    Lore:[ \
      '{"text":"Venom","italic":false,"color":"gray"}', \
      '{"text":""}', \
      '{"text":"Venom","underlined":true,"italic":false,"color":"light_purple"}', \
      '{"text":"Arrows inflict Poison.","color":"light_purple"}' \
    ] \
  } \
}
give @s minecraft:arrow 1