# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: ocelot
# Function Name: dvz:zombies/disc/ocelot
# File Purpose: Spawn items for the ocelot zombie class.
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

tag @s add ocelot
tag @s add selected_class
tag @s add suicide_pill
tag @s add mana

team join z3OCELOT @s

# Equips the ocelot with their armor.
item replace entity @s armor.head with minecraft:firework_star{ \
  CustomModelData:0, \
  display:{ \
    Name:'{"text":"Ocelot Head","italic":false}' \
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
  display:{color:16768372}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:16180138}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:9327914}, \
  Enchantments:[ \
    {id:"minecraft:feather_falling",lvl:10s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}

# Gives ocelot all their items.
give @s minecraft:salmon{ \
  display:{ \
    Name:'{"text":"Fish Slapper","italic":false}' \
  }, \
  Enchantments:[ \
    {id:"minecraft:knockback",lvl:2s} \
  ] \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7040, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Steal Mana","italic":false,"color":"yellow"}', \
    Lore:[ \
      '{"text":"Steal 30 mana from the targeted player.","color":"blue"}', \
      '{"text":"10 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7041, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Dash","italic":false,"color":"yellow"}', \
    Lore:[ \
      '{"text":"Gain a short burst of speed.","color":"blue"}', \
      '{"text":"Requires 20 mana","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7042, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Disarm","italic":false,"color":"yellow"}', \
    Lore:[ \
      '{"text":"Weaken everyone in front of you.","color":"blue"}', \
      '{"text":"Requires 40 mana","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7043, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Mute","italic":false,"color":"yellow"}', \
    Lore:[ \
      '{"text":"Silence everyone around you.","color":"blue"}', \
      '{"text":"Requires 60 mana","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:cooked_beef 64
give @s minecraft:vine 24