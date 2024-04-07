# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/hoglin/eat
# File Name: evolve_1
# Function Name: dvz:zombies/hoglin/evolve_1
# File Purpose: "Evolve" the hoglin by giving it better armor and items.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.20
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Reset experience back to 0.
scoreboard players set @s DVZ.experience 0

tag @s remove lvl_1
tag @s add lvl_2

playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.8
playsound minecraft:entity.player.burp player @a ~ ~ ~ 1 0.7

# Upgrade hoglin's pickaxe
enchant @s minecraft:efficiency 4

# Upgrade hoglin's armor.
item replace entity @s armor.head with minecraft:player_head{ \
  SkullOwner:"MHF_Pig", \
  display:{ \
    Name:'{"text":"Hoglin Head","italic":false}' \
  }, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"head",AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0d,UUID:[I;3,3,3,3]} \
  ] \
}
item replace entity @s armor.chest with minecraft:leather_chestplate{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:12677475}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:2s}, \
    {id:"minecraft:projectile_protection",lvl:2s}, \
    {id:"minecraft:blast_protection",lvl:2s}, \
    {id:"minecraft:fire_protection",lvl:2s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"chest",AttributeName:"generic.armor",Name:"generic.armor",Amount:5.0d,UUID:[I;4,4,4,4]} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:12677475}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:2s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"legs",AttributeName:"generic.armor",Name:"generic.armor",Amount:4.0d,UUID:[I;5,5,5,5]} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:12677475}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:2s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"feet",AttributeName:"generic.armor",Name:"generic.armor",Amount:1.0d,UUID:[I;6,6,6,6]} \
  ] \
}

# Give hoglin a weapon.
give @s minecraft:iron_sword{ \
  Unbreakable:1b, \
  hunger_drain:1, \
  Enchantments:[ \
    {id:"minecraft:sharpness",lvl:2s} \
  ], \
  display:{ \
    Lore:[ \
      '{"text":"Hunger Drain I","italic":false,"color":"gray"}', \
      '{"text":""}', \
      '{"text":"Hunger Drain","underlined":true,"italic":false,"color":"light_purple"}', \
      '{"text":"Player hit is hungered.","color":"light_purple"}' \
    ] \
  } \
}

# Permanent Speed effect gets downgraded to level 1.
effect clear @s minecraft:speed
effect give @s minecraft:speed infinite 0 true