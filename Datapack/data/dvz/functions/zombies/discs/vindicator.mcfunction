# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: vindicator
# Function Name: dvz:zombies/disc/vindicator
# File Purpose: Spawn items for the vindicator zombie class.
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

tag @s add vindicator
tag @s add selected_class
tag @s add suicide_pill

team join z0VINDICATOR @s

# Equips the vindicator with their armor.
item replace entity @s armor.head with minecraft:firework_star{ \
  CustomModelData:0, \
  display:{ \
    Name:'{"text":"Vindicator Head","italic":false}' \
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
  display:{color:4209720}, \
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
  display:{color:2580065}, \
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
  display:{color:1775896}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:2s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"feet",AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0d,Operation:0,UUID:[I;6,6,6,6]} \
  ] \
}

# Equips the vindicator with a shield.
item replace entity @s weapon.offhand with minecraft:shield{Unbreakable:1b}

# Gives vindicator all their items.
give @s minecraft:iron_axe{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:sharpness",lvl:3s} \
  ] \
}
give @s minecraft:iron_sword{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:sharpness",lvl:1s} \
  ] \
}
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
  CustomModelData:5020, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Hasty Bond","italic":false,"color":"dark_gray"}', \
    Lore:[ \
      '{"text":"Get Haste effect when close to another","color":"blue"}', \
      '{"text":"Vindicator.","color":"blue"}', \
      '{"text":"Passive Ability","italic":false,"color":"green"}' \
    ] \
  } \
}