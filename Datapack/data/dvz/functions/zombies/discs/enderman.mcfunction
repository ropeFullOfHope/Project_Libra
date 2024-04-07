# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: enderman
# Function Name: dvz:zombies/disc/enderman
# File Purpose: Spawn items for the enderman zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.29
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

tag @s add enderman
tag @s add selected_class
tag @s add suicide_pill

team join z6ENDERMAN @s

# Equips the enderman with their armor.
item replace entity @s armor.head with minecraft:player_head{ \
  SkullOwner:"MHF_Enderman", \
  display:{ \
    Name:'{"text":"Blaze Head","italic":false}' \
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
  display:{color:0}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"chest",AttributeName:"generic.armor",Name:"generic.armor",Amount:3.0d,UUID:[I;4,4,4,4]}, \
    {Slot:"chest",AttributeName:"generic.max_health",Name:"generic.max_health",Amount:8.0d,UUID:[I;4,4,4,4]} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:0}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:0}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}

# Gives enderman all their items.
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7130, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Teleport","italic":false,"color":"light_purple"}', \
    Lore:[ \
      '{"text":"Teleport to the top of the block you are","color":"blue"}', \
      '{"text":"looking at.","color":"blue"}', \
      '{"text":"20 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:cooked_beef 64
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7131, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Create Portal Above You","italic":false,"color":"light_purple"}', \
    Lore:[ \
      '{"text":"Create a portal high above you.","color":"blue"}', \
      '{"text":"Gain a permanent resistance effect.","color":"blue"}', \
      '{"text":"Leaving the portal will kill you.","color":"blue"}', \
      '{"text":"If you die the portal will close.","color":"blue"}', \
      '{"text":"Single-use item","italic":false,"color":"red"}', \
      '{"text":"30 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Starts on a cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7132, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Create Portal Below You","italic":false,"color":"light_purple"}', \
    Lore:[ \
      '{"text":"Create a portal at your feet.","color":"blue"}', \
      '{"text":"Gain a permanent resistance effect.","color":"blue"}', \
      '{"text":"Leaving the portal will kill you.","color":"blue"}', \
      '{"text":"If you die the portal will close.","color":"blue"}', \
      '{"text":"Single-use item","italic":false,"color":"red"}', \
      '{"text":"30 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Starts on a cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}