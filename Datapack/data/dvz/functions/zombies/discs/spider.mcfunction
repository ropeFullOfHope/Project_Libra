# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: spider
# Function Name: dvz:zombies/disc/spider
# File Purpose: Spawn items for the spider zombie class.
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

# Gives spider their permanent effects
effect give @s minecraft:speed infinite 2 true
effect give @s minecraft:jump_boost infinite 4 true

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

tag @s add spider
tag @s add selected_class
tag @s add suicide_pill

team join z2SPIDER @s

# Equips the spider with their armor.
item replace entity @s armor.head with minecraft:player_head{ \
  SkullOwner:"MHF_CaveSpider", \
  display:{ \
    Name:'{"text":"Spider Head","italic":false}' \
  }, \
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
  display:{color:1391156}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:11826}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:727832}, \
  Enchantments:[ \
    {id:"minecraft:feather_falling",lvl:10s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}

# Gives spider all their items.
give @s minecraft:spider_eye{ \
  poison_aspect:1, \
  blinding:1, \
  Enchantments:[{}], \
  display:{ \
    Lore:[ \
      '{"text":"Poison Aspect","italic":false,"color":"gray"}', \
      '{"text":"Blinding","italic":false,"color":"gray"}', \
      '{"text":""}', \
      '{"text":"Poison Aspect","underlined":true,"italic":false,"color":"light_purple"}', \
      '{"text":"Player hit is poisoned.","color":"light_purple"}', \
      '{"text":"Blinding","underlined":true,"italic":false,"color":"light_purple"}', \
      '{"text":"Player hit is blinded.","color":"light_purple"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7020, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Web","italic":false,"color":"blue"}', \
    Lore:[ \
      '{"text":"Shoot Cobwebs that can trap dwarves.","color":"blue"}', \
      '{"text":"15 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:cooked_beef 64
give @s minecraft:shears{ \
  Unbreakable:1b, \
  display:{ \
    Name:'{"text":"Web Cleaner","italic":false}' \
  }, \
  Enchantments:[ \
    {id:"minecraft:efficiency",lvl:10s} \
  ] \
}
give @s minecraft:warped_fungus_on_a_stick{ \
  CustomModelData:5050, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Poison Resistance","italic":false,"color":"dark_blue"}', \
    Lore:[ \
      '{"text":"Immunity to Poison effect.","color":"blue"}', \
      '{"text":"Passive Ability","italic":false,"color":"green"}' \
    ] \
  } \
}