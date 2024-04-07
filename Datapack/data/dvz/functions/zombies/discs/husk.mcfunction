# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: husk
# Function Name: dvz:zombies/disc/husk
# File Purpose: Spawn items for the husk zombie class.
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

tag @s add husk
tag @s add selected_class
tag @s add suicide_pill

team join z0HUSK @s

# Equips the husk with their armor.
item replace entity @s armor.head with minecraft:player_head{ \
  SkullOwner:"MHF_Husk", \
  display:{ \
    Name:'{"text":"Husk Head","italic":false}' \
  }, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"head",AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0d,Operation:0,UUID:[I;3,3,3,3]} \
  ] \
}
item replace entity @s armor.chest with minecraft:leather_chestplate{ \
  display:{color:13875325}, \
  Unbreakable:1b, \
  HideFlags:64, \
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
  display:{color:3353113}, \
  Unbreakable:1b, \
  HideFlags:64, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:3s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"legs",AttributeName:"generic.armor",Name:"generic.armor",Amount:5.0d,Operation:0,UUID:[I;5,5,5,5]} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  display:{color:3353113}, \
  Unbreakable:1b, \
  HideFlags:64, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:2s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"feet",AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0d,Operation:0,UUID:[I;6,6,6,6]} \
  ] \
}

# Equips the husk with a shield.
item replace entity @s weapon.offhand with minecraft:shield{Unbreakable:1b}

# Gives husk all their items.
give @s minecraft:stone_sword{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:sharpness",lvl:3s} \
  ] \
}
give @s minecraft:stone_axe{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:sharpness",lvl:3s} \
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
loot give @s loot dvz:zombies/husk_potions
give @s minecraft:warped_fungus_on_a_stick{ \
  CustomModelData:5010, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Speedy Bond","italic":false,"color":"gold"}', \
    Lore:[ \
      '{"text":"Get Speed effect when close to another","color":"blue"}', \
      '{"text":"Husk.","color":"blue"}', \
      '{"text":"Passive Ability","italic":false,"color":"green"}' \
    ] \
  } \
}