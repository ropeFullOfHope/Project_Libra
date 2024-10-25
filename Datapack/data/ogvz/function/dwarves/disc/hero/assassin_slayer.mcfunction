# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: assassin_slayer
# Function Name: ogvz:dwarves/heroes/disc/assassin_slayer
# File Purpose: Spawn items for the assassin slayer hero.
# Created By: ropeFullOfHope
# 
# Created On: 2024.10.21
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

#clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={active_id:1000}] 1

effect clear @s

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

# Remove all regular dwarf classes tags.
tag @s remove ogvz.dwarf.class.builder
tag @s remove ogvz.dwarf.class.blacksmith
tag @s remove ogvz.dwarf.class.tailor
tag @s remove ogvz.dwarf.class.baker
tag @s remove ogvz.dwarf.class.alchemist
tag @s remove ogvz.dwarf.class.enchanter

tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class
tag @s add ogvz.dwarf.class.hero
tag @s add ogvz.dwarf.class.hero.assassin_slayer
tag @s add ogvz.mana

team join d0DRAGON_WARRIOR @s

execute as @s at @s run function ogvz:misc/drop_armor

# Equips the hero with their armor.
item replace entity @s armor.head with minecraft:chainmail_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Assassin Slayer Helmet","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":3, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",name:"minecraft:armor",amount:3,operation:"add_value",slot:"head",id:"ogvz:head"}, \
      {type:"minecraft:armor_toughness",name:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"head",id:"ogvz:head"} \
    ] \
  } \
]
item replace entity @s armor.chest with minecraft:chainmail_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Assassin Slayer Chestplate","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":4, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",name:"minecraft:armor",amount:8,operation:"add_value",slot:"chest",id:"ogvz:chest"}, \
      {type:"minecraft:armor_toughness",name:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"chest",id:"ogvz:chest"} \
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:chainmail_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Assassin Slayer Leggings","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":4, \
      "minecraft:swift_sneak":3, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",name:"minecraft:armor",amount:6,operation:"add_value",slot:"legs",id:"ogvz:legs"}, \
      {type:"minecraft:armor_toughness",name:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
    ] \
  } \
]
item replace entity @s armor.feet with minecraft:chainmail_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Assassin Slayer Boots","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":3, \
      "minecraft:feather_falling":4, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",name:"minecraft:armor",amount:3,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
      {type:"minecraft:armor_toughness",name:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
      {type:"minecraft:movement_speed",name:"minecraft:movement_speed",amount:0.2,operation:"add_multiplied_total",slot:"feet",id:"ogvz:feet"} \
      ] \
  } \
]

# Gives the hero all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4200}, \
  minecraft:item_model="ogvz:betrayers_dagger", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Betrayer\'s Dagger","color":"red","bold":true}', \
  minecraft:lore=[ \
    '{"text":"Assassinate","color":"blue","italic":false,"underlined":true}', \
    '{"text":"Attacking a player from behind","color":"blue"}', \
    '{"text":"will deal massive damage.","color":"blue"}', \
    '{"text":"8 second cooldown","color":"red","italic":false}', \
    '{"text":"Secondary Attack","color":"green","italic":false}', \
    '{"text":" "}', \
    '{"text":"When in Main Hand:","color":"gray","italic":false}', \
    '{"text":" 8 Attack Damage","color":"dark_green","italic":false}', \
    '{"text":" 20 Attack Speed","color":"dark_green","italic":false}', \
    '{"text":" 2.5 Attack Reach","color":"dark_green","italic":false}', \
    '{"text":"Unbreakable","color":"blue","italic":false}', \
    '{"text":"Heroic Item","color":"gold","italic":false,"bold":true}' \
  ], \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:attack_damage",name:"minecraft:attack_damage",amount:7.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
      {type:"minecraft:attack_speed",name:"minecraft:attack_speed",amount:16.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \
    ], \
    show_in_tooltip:false \
  } \
]

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4201}, \
  minecraft:item_model="ogvz:cloak_of_shadows", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Cloak of Shadows","color":"gray","bold":true}', \
]

tellraw @a [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"Due to their valiant efforts, ","color":"yellow"}, \
  {"selector":"@s"}, \
  {"text":" has been proclaimed as a ","color":"yellow"}, \
  {"text":"Hero","color":"gold","bold":true}, \
  {"text":"!","color":"yellow"} \
]

playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0.04 30
