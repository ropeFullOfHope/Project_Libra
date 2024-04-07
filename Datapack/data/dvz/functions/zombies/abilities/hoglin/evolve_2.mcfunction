# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/hoglin/eat
# File Name: evolve_2
# Function Name: dvz:zombies/hoglin/evolve_2
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

# Clear actionbar
title @s actionbar ""

tag @s remove lvl_2
tag @s add lvl_3

# Switch teams so the name can be displayed as purple in tab.
team join z6HOGLIN3 @s

# Announce the rise of level 3 hoglin.
tellraw @a [ \
  "", \
  {"text":"ALERT: ","bold":true,"color":"gold"}, \
  {"selector":"@s"}, \
  {"text":" has risen!","color":"gold"} \
]
summon minecraft:lightning_bolt ~ ~5 ~
execute as @a run playsound entity.zoglin.angry player @s ~ ~ ~ 1000 0.8
execute as @a run playsound entity.zoglin.angry player @s ~ ~ ~ 1000 1.5

playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.8
playsound minecraft:entity.player.burp player @a ~ ~ ~ 1 0.7

# Remove hoglin's pickaxe.
clear @s minecraft:golden_pickaxe{evolution:1}

# Upgrade hoglin's armor.
item replace entity @s armor.head with minecraft:firework_star{ \
  CustomModelData:10, \
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
  display:{color:10838864}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:5s}, \
    {id:"minecraft:projectile_protection",lvl:3s}, \
    {id:"minecraft:blast_protection",lvl:3s}, \
    {id:"minecraft:fire_protection",lvl:3s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"chest",AttributeName:"generic.armor",Name:"generic.armor",Amount:6.0d,UUID:[I;4,4,4,4]} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:10838864}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:5s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"legs",AttributeName:"generic.armor",Name:"generic.armor",Amount:5.0d,UUID:[I;5,5,5,5]} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:10838864}, \
  Enchantments:[ \
    {id:"minecraft:protection",lvl:5s}, \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"feet",AttributeName:"generic.armor",Name:"generic.armor",Amount:2.0d,UUID:[I;6,6,6,6]} \
  ] \
}

# Upgrade hoglin's weapon.
clear @s minecraft:iron_sword{hunger_drain:1}
give @s minecraft:iron_sword{ \
  Unbreakable:1b, \
  hunger_drain:2, \
  Enchantments:[ \
    {id:"minecraft:sharpness",lvl:5s} \
  ], \
  display:{ \
    Lore:[ \
      '{"text":"Hunger Drain II","italic":false,"color":"gray"}', \
      '{"text":""}', \
      '{"text":"Hunger Drain","underlined":true,"italic":false,"color":"light_purple"}', \
      '{"text":"Player hit is hungered.","color":"light_purple"}' \
    ] \
  } \
}

# Permanent Speed effect gets cleared.
effect clear @s minecraft:speed