# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: zombie
# Function Name: dvz:zombies/disc/zombie
# File Purpose: Spawn items for the zombie zombie class.
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

tag @s add zombie
tag @s add selected_class
tag @s add suicide_pill

team join z0ZOMBIE @s

# Equips the zombie with their armor.
item replace entity @s armor.head with minecraft:zombie_head{ \
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
  display:{color:44975}, \
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
  display:{color:4602533}, \
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
  display:{color:4602533}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:2s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"feet",AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0d,Operation:0,UUID:[I;6,6,6,6]} \
  ] \
}

# Equips the zombie with a shield.
item replace entity @s weapon.offhand with minecraft:shield{Unbreakable:1b}

# Gives zombie all their items.
loot give @s loot dvz:zombies/zombie_sword
give @s minecraft:iron_sword{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:sharpness",lvl:2s} \
  ] \
}
give @s minecraft:iron_axe{ \
  Unbreakable:1b, \
  Enchantments:[ \
    {id:"minecraft:sharpness",lvl:2s} \
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
  CustomModelData:5000, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Regenerative Bond","italic":false,"color":"dark_green"}', \
    Lore:[ \
      '{"text":"Get Regeneration effect when close to","color":"blue"}', \
      '{"text":"another Zombie.","color":"blue"}', \
      '{"text":"Passive Ability","italic":false,"color":"green"}' \
    ] \
  } \
}