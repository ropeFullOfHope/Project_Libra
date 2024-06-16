# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: dragon_warrior
# Function Name: ogvz:dwarves/heroes/discs/dragon_warrior
# File Purpose: Spawn items for the dragon warrior hero.
# Created By: ropeFullOfHope
# 
# Created On: 2024.04.04
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

item replace entity @s[tag=temp.use.mainhand] weapon.mainhand with minecraft:air
item replace entity @s[tag=temp.use.offhand] weapon.offhand with minecraft:air

effect clear @s

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

# Remove all dwarf class tags.
tag @s remove ogvz.dwarf.class
tag @s remove ogvz.dwarf.class.builder
tag @s remove ogvz.dwarf.class.blacksmith
tag @s remove ogvz.dwarf.class.tailor
tag @s remove ogvz.dwarf.class.baker
tag @s remove ogvz.dwarf.class.alchemist
tag @s remove ogvz.dwarf.class.enchanter

tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class.hero
tag @s add ogvz.dwarf.class.hero.dragon_warrior
tag @s add ogvz.mana

team join d0DRAGON_WARRIOR @s

execute as @s at @s run function ogvz:misc/drop_armor

# Equips the hero with their armor.
item replace entity @s armor.head with minecraft:golden_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Dragon Warrior Helmet","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":4, \
      "minecraft:blast_protection":1, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:generic.armor",name:"minecraft:generic.armor",amount:3,operation:"add_value",slot:"head",uuid:[I;3,3,3,3]}, \
      {type:"minecraft:generic.armor_toughness",name:"minecraft:generic.armor_toughness",amount:2,operation:"add_value",slot:"head",uuid:[I;3,3,3,3]} \
    ] \
  } \
]
item replace entity @s armor.chest with minecraft:golden_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Dragon Warrior Chestplate","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":4, \
      "minecraft:blast_protection":1, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:generic.armor",name:"minecraft:generic.armor",amount:8,operation:"add_value",slot:"chest",uuid:[I;4,4,4,4]}, \
      {type:"minecraft:generic.armor_toughness",name:"minecraft:generic.armor_toughness",amount:2,operation:"add_value",slot:"chest",uuid:[I;4,4,4,4]} \
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:golden_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Dragon Warrior Leggings","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":4, \
      "minecraft:blast_protection":1, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:generic.armor",name:"minecraft:generic.armor",amount:6,operation:"add_value",slot:"legs",uuid:[I;5,5,5,5]}, \
      {type:"minecraft:generic.armor_toughness",name:"minecraft:generic.armor_toughness",amount:2,operation:"add_value",slot:"legs",uuid:[I;5,5,5,5]} \
    ] \
  } \
]
item replace entity @s armor.feet with minecraft:golden_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Dragon Warrior Boots","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":4, \
      "minecraft:feather_falling":4, \
      "minecraft:blast_protection":1, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:generic.armor",name:"minecraft:generic.armor",amount:3,operation:"add_value",slot:"feet",uuid:[I;6,6,6,6]}, \
      {type:"minecraft:generic.armor_toughness",name:"minecraft:generic.armor_toughness",amount:2,operation:"add_value",slot:"feet",uuid:[I;6,6,6,6]} \
    ] \
  } \
]

# Gives the hero all their items.
give @s minecraft:golden_axe[ \
  minecraft:custom_model_data=1000, \
  minecraft:custom_data={crippling:1}, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Golden Flail","color":"gold","bold":true}', \
  minecraft:lore=[ \
    '{"text":"\\uF106\\uE020\\uF107","color":"white","italic":false}', \
    '{"text":"Crippling","color":"gray","italic":false}', \
    '{"text":" "}', \
    '{"text":"Crippling","color":"light_purple","italic":false,"underlined":true}', \
    '{"text":"Inflicts slowness.","color":"light_purple"}', \
    '{"text":" "}', \
    '{"text":"When in Main Hand:","color":"gray","italic":false}', \
    '{"text":" 9.5 Attack Damage","color":"dark_green","italic":false}', \
    '{"text":" 1.4 Attack Speed","color":"dark_green","italic":false}', \
    '{"text":" 3 Attack Reach","color":"dark_green","italic":false}', \
    '{"text":"Unbreakable","color":"blue"}', \
    '{"text":"Heroic Item","color":"gold","italic":false,"bold":true}' \
  ], \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:generic.attack_damage",name:"minecraft:generic.attack_damage",amount:8.5,operation:"add_value",slot:"mainhand",uuid:[I;1,1,1,1]}, \
      {type:"minecraft:generic.attack_speed",name:"minecraft:generic.attack_speed",amount:-2.6,operation:"add_value",slot:"mainhand",uuid:[I;1,1,1,1]} \
    ], \
    show_in_tooltip:false \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_model_data=4001, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Dwarven Ruby","color":"red"}', \
  minecraft:lore=[ \
    '{"text":"Refills mana of other dwarves.","color":"blue"}', \
    '{"text":"Requires 50 mana","color":"red","italic":false}', \
    '{"text":"60 second cooldown","color":"red","italic":false}', \
    '{"text":"Active Item","color":"green","italic":false}', \
    '{"text":"Heroic Item","color":"gold","italic":false,"bold":true}' \
  ] \
]

tellraw @a [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" Due to their valiant efforts, ","color":"yellow"}, \
  {"selector":"@s"}, \
  {"text":" has been proclaimed as a ","color":"yellow"}, \
  {"text":"Hero","color":"gold","bold":true}, \
  {"text":"!","color":"yellow"} \
]

playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0.04 30
