# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: silverfish
# Function Name: dvz:zombies/disc/silverfish
# File Purpose: Spawn items for the silverfish zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.22
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

tag @s add silverfish
tag @s add selected_class
tag @s add suicide_pill

team join z5SILVERFISH @s

# Equips the silverfish with their armor.
item replace entity @s armor.head with minecraft:player_head{ \
  SkullOwner:{ \
    Properties:{ \
      textures:[ \
        {Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGE5MWRhYjgzOTFhZjVmZGE1NGFjZDJjMGIxOGZiZDgxOWI4NjVlMWE4ZjFkNjIzODEzZmE3NjFlOTI0NTQwIn19fQ=="} \
      ] \
    } \
  }, \
  display:{ \
    Name:'{"text":"Silverfish Head","italic":false}' \
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
  display:{color:8816262}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:8816262}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:8816262}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}

# Gives silverfish all their items.
give @s minecraft:iron_shovel
give @s minecraft:cooked_beef 64
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7110, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Infest","italic":false,"color":"gray"}', \
    Lore:[ \
      '{"text":"Infest dwarf blocks with Silverfish.","color":"blue"}', \
      '{"text":"Requires 1 Silverfish Egg Cluster","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7111, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Roar","italic":false,"color":"gray"}', \
    Lore:[ \
      '{"text":"Hatch nearby Silverfish from infested","color":"blue"}', \
      '{"text":"blocks and receive new Silverfish eggs.","color":"blue"}', \
      '{"text":"Roaring will reveal your location.","color":"blue"}', \
      '{"text":"50 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:heart_of_the_sea{ \
  CustomModelData:1000, \
  display:{ \
    Name:'{"text":"Silverfish Egg Cluster","italic":false,"color":"white"}' \
  } \
} 16