# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: golem
# Function Name: dvz:zombies/disc/golem
# File Purpose: Spawn items for the golem zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.25
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

clear @s
effect clear @s

# Fully heal player.
effect give @s minecraft:instant_health 1 9 true
effect give @s minecraft:regeneration 3 9 true

effect give @s minecraft:night_vision infinite 0 true
effect give @s minecraft:conduit_power infinite 0 true

# Gives golem their permanent effects.
effect give @s mining_fatigue infinite 8 true
effect give @s slowness infinite 4 true
effect give @s regeneration infinite 0 true
effect give @s jump_boost infinite 128 true
effect give @s strength infinite 255 true

tag @s add golem
tag @s add selected_class
tag @s add suicide_pill

team join z6GOLEM @s

# Equip golem with their armor.
item replace entity @s armor.head with minecraft:firework_star{ \
  CustomModelData:0, \
  display:{ \
    Name:'{"text":"Golem Head","italic":false}' \
  }, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"head",AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0d,UUID:[I;3,3,3,3]} \
  ] \
}
item replace entity @s armor.chest with minecraft:iron_chestplate{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:blast_protection",lvl:10s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"chest",AttributeName:"generic.armor",Name:"generic.armor",Amount:6.0d,UUID:[I;4,4,4,4]}, \
    {Slot:"chest",AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.5d,UUID:[I;4,4,4,4]}, \
    {Slot:"chest",AttributeName:"generic.max_health",Name:"generic.max_health",Amount:20.0d,UUID:[I;4,4,4,4]} \
  ] \
}
item replace entity @s armor.legs with minecraft:iron_leggings{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.feet with minecraft:iron_boots{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:feather_falling",lvl:10s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}

# Give golem all their items.
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7120, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Fissure","italic":false,"color":"gray"}', \
    Lore:[ \
      '{"text":"Raise ground in front of you.","color":"blue"}', \
      '{"text":"5 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:cooked_beef 64
give @s minecraft:warped_fungus_on_a_stick{ \
  CustomModelData:666, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Jump Boost Glitch","italic":false,"color":"dark_gray"}', \
    Lore:[ \
      '{"text":"Taking damage will sometimes boost you","color":"blue"}', \
      '{"text":"high into the air.","color":"blue"}', \
      '{"text":"Game Bug ","italic":false,"color":"green"},{"text":"+","italic":false,"obfuscated":true,"color":"green"}' \
    ] \
  } \
}