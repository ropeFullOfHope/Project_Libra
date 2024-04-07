# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: phantom
# Function Name: dvz:zombies/disc/phantom
# File Purpose: Spawn items for the phantom zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.13
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

tag @s add phantom
tag @s add selected_class
tag @s add suicide_pill

team join z4PHANTOM @s

# Equips the phantom with their armor.
item replace entity @s armor.head with minecraft:player_head{ \
  HideFlags:2, \
  SkullOwner:{ \
    Properties:{ \
      textures:[ \
        {Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQ2ODMwZGE1ZjgzYTNhYWVkODM4YTk5MTU2YWQ3ODFhNzg5Y2ZjZjEzZTI1YmVlZjdmNTRhODZlNGZhNCJ9fX0="} \
      ] \
    } \
  }, \
  display:{ \
    Name:'{"text":"Phantom Head","italic":false}' \
  }, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"head",AttributeName:"generic.armor",Name:"generic.armor",Amount:0.0d,Operation:0,UUID:[I;3,3,3,3]} \
  ] \
}
item replace entity @s armor.chest with minecraft:elytra{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:66, \
  display:{color:2704794}, \
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
  display:{color:2704794}, \
  Enchantments:[ \
    {id:"minecraft:feather_falling",lvl:10s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"feet",AttributeName:"generic.armor",Name:"generic.armor",Amount:0.0d,Operation:0,UUID:[I;6,6,6,6]} \
  ] \
}

# Gives phantom all their items.
item replace entity @s hotbar.8 with minecraft:firework_rocket{ \
  reusable:1, \
  Fireworks:{ \
    Flight:1b \
  }, \
  display:{ \
    Lore:[ \
      '{"text":"Reusable","italic":false,"color":"gray"}' \
    ] \
  } \
} 5
give @s minecraft:stone_sword{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"knockback",lvl:1} \
  ] \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7090, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Delirium","italic":false,"color":"blue"}', \
    Lore:[ \
      '{"text":"Shoot a ray that debuffs the player hit.","color":"blue"}', \
      '{"text":"8 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7091, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Shrouding Fog","italic":false,"color":"blue"}', \
    Lore:[ \
      '{"text":"Throw a potion that creates a huge cloud","color":"blue"}', \
      '{"text":"that blocks vision.","color":"blue"}', \
      '{"text":"Single-use item.","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:cooked_beef 64
give @s minecraft:warped_fungus_on_a_stick{ \
  CustomModelData:5060, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Reusable Firework Rockets","italic":false,"color":"dark_blue"}', \
    Lore:[ \
      '{"text":"Get back your Firework Rocket a short","color":"blue"}', \
      '{"text":"while after using it.","color":"blue"}', \
      '{"text":"Passive Ability","italic":false,"color":"green"}' \
    ] \
  } \
}