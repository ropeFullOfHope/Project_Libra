# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: guardian
# Function Name: dvz:zombies/disc/guardian
# File Purpose: Spawn items for the guardian zombie class.
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

tag @s add guardian
tag @s add selected_class
tag @s add suicide_pill

team join z1GUARDIAN @s

# Equips the guardian with their armor.
item replace entity @s armor.head with minecraft:firework_star{ \
  CustomModelData:0, \
  display:{ \
    Name:'{"text":"Guardian Head","italic":false}' \
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
  display:{color:5287080}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:5287080}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:15759144}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}

# Gives guardian all their items.
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7000, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Beam","italic":false,"color":"aqua"}', \
    Lore:[ \
      '{"text":"Ranged magic attack.","color":"blue"}', \
      '{"text":"5 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:cooked_beef 64
give @s minecraft:vine 24