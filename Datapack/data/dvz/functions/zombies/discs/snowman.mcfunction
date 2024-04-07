# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: snowman
# Function Name: dvz:zombies/disc/snowman
# File Purpose: Spawn items for the snowman zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.27
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

tag @s add snowman
tag @s add selected_class
tag @s add suicide_pill
tag @s add ice_type

team join z4SNOWMAN @s

# Equips the snowman with their armor.
item replace entity @s armor.head with minecraft:carved_pumpkin{ \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"head",AttributeName:"generic.armor",Name:"generic.armor",Amount:1.0d,UUID:[I;3,3,3,3]} \
  ] \
}
item replace entity @s armor.chest with minecraft:leather_chestplate{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:9004839}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:16777215}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  permafrost:1, \
  HideFlags:64, \
  display:{ \
    color:15663103, \
    Lore:[ \
      '{"text":"Permafrost","italic":false,"color":"gray"}', \
      '{"text":""}', \
      '{"text":"Permafrost","italic":false,"underlined":true,"color":"light_purple"}', \
      '{"text":"Freezes Frosted Ice into normal Ice.","color":"light_purple"}' \
    ] \
  }, \
  Enchantments:[ \
    {id:"minecraft:frost_walker",lvl:2s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}

# Gives snowman all their items.
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7060, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Snowball Barrage","italic":false,"color":"aqua"}', \
    Lore:[ \
      '{"text":"Lob a barrage of snowballs.","color":"blue"}', \
      '{"text":"Use while sprinting to lob further away.","color":"blue"}', \
      '{"text":"Use while sneaking to lob closer to you.","color":"blue"}', \
      '{"text":"8 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7061, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Icicle","italic":false,"color":"aqua"}', \
    Lore:[ \
      '{"text":"Freeze targeted player.","color":"blue"}', \
      '{"text":"30 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:cooked_beef 64