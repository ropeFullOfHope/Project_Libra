# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: drowned
# Function Name: dvz:zombies/disc/drowned
# File Purpose: Spawn items for the drowned zombie class.
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

tag @s add drowned
tag @s add selected_class
tag @s add suicide_pill

team join z0DROWNED @s

# Equips the drowned with their armor.
item replace entity @s armor.head with minecraft:player_head{ \
  SkullOwner:{ \
    Properties:{ \
      textures:[ \
        {Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzNmN2NjZjYxZGJjM2Y5ZmU5YTYzMzNjZGUwYzBlMTQzOTllYjJlZWE3MWQzNGNmMjIzYjNhY2UyMjA1MSJ9fX0="} \
      ] \
    } \
  }, \
  display:{ \
    Name:'{"text":"Drowned Head","italic":false}' \
  }, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"head",AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0d,Operation:0,UUID:[I;3,3,3,3]} \
  ] \
}
item replace entity @s armor.chest with minecraft:leather_chestplate{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:6571569}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:3s}, \
    {id:"minecraft:projectile_protection",lvl:2s}, \
    {id:"minecraft:blast_protection",lvl:2s}, \
    {id:"minecraft:fire_protection",lvl:2s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"chest",AttributeName:"generic.armor",Name:"generic.armor",Amount:6.0d,Operation:0,UUID:[I;4,4,4,4]} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:5782827}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:3s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"legs",AttributeName:"generic.armor",Name:"generic.armor",Amount:5.0d,Operation:0,UUID:[I;5,5,5,5]} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:5670014}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:2s}, \
    {id:"minecraft:feather_falling",lvl:4s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"feet",AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0d,Operation:0,UUID:[I;6,6,6,6]} \
  ] \
}

# Equips the drowned with a shield in the 9th hotbar slot.
item replace entity @s container.8 with minecraft:shield{Unbreakable:1b}

# Gives drowned all their items.
give @s minecraft:iron_sword{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:sharpness",lvl:2s} \
  ] \
}
loot give @s loot dvz:zombies/drowned_trident
give @s minecraft:cooked_beef 64
give @s splash_potion{ \
  HideFlags:32, \
  display:{ \
    Name:'{"text":"Splash Potion of Harming","italic":false}', \
    Lore:[ \
      '{"text":"Instant Damage II","color":"red","italic":false}' \
    ] \
  }, \
  custom_potion_effects:[ \
    {id:"minecraft:luck",amplifier:101b,duration:200} \
  ], \
  CustomPotionColor:11101546 \
} 2
loot give @s loot dvz:zombies/zombie_potion
give @s minecraft:warped_fungus_on_a_stick{ \
  CustomModelData:5030, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Graceful Bond","italic":false,"color":"dark_aqua"}', \
    Lore:[ \
      '{"text":"Get Dolphin\'s Grace effect when close","color":"blue"}', \
      '{"text":"to another Drowned.","color":"blue"}', \
      '{"text":"Passive Ability","italic":false,"color":"green"}' \
    ] \
  } \
}