# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: wither_skeleton
# Function Name: dvz:zombies/disc/wither_skeleton
# File Purpose: Spawn items for the wither skeleton zombie class.
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

tag @s add wither_skeleton
tag @s add selected_class
tag @s add suicide_pill

team join z1WITHER_SKELETON @s

# Equips the wither skeleton with their armor.
item replace entity @s armor.head with minecraft:wither_skeleton_skull{ \
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
  display:{color:3684408}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:3684408}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:3684408}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}

# Gives wither skeleton all their items.
give @s minecraft:bow{ \
  Unbreakable:1b, \
  decay:1, \
  Enchantments:[ \
    {id:"minecraft:power",lvl:3s}, \
    {id:"minecraft:infinity",lvl:1s} \
  ], \
  display:{ \
    Lore:[ \
      '{"text":"Decay","italic":false,"color":"gray"}', \
      '{"text":""}', \
      '{"text":"Decay","underlined":true,"italic":false,"color":"light_purple"}', \
      '{"text":"Arrows inflict Wither.","color":"light_purple"}' \
    ] \
  } \
}
give @s minecraft:stone_sword{ \
  Unbreakable:1b, \
  wither_aspect:1, \
  display:{ \
    Lore:[ \
      '{"text":"Wither Aspect","italic":false,"color":"gray"}', \
      '{"text":""}', \
      '{"text":"Wither Aspect","underlined":true,"italic":false,"color":"light_purple"}', \
      '{"text":"Player hit is withered.","color":"light_purple"}' \
    ] \
  } \
}
give @s minecraft:cooked_beef 64
give @s minecraft:vine 24
give @s minecraft:arrow 1
give @s minecraft:warped_fungus_on_a_stick{ \
  CustomModelData:5040, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Withering Bones","italic":false,"color":"dark_gray"}', \
    Lore:[ \
      '{"text":"Getting inflicted with Withering will","color":"blue"}', \
      '{"text":"replace the effect with Regeneration.","color":"blue"}', \
      '{"text":"Passive Ability","italic":false,"color":"green"}' \
    ] \
  } \
}