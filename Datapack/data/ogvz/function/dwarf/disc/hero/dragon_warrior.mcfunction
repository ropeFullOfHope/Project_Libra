# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: dragon_warrior
# Function Name: ogvz:dwarf/disc/hero/dragon_warrior
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

# Remove the hero disc if the player used it.
item replace entity @s[tag=temp.use.mainhand] weapon.mainhand with minecraft:air
item replace entity @s[tag=temp.use.offhand] weapon.offhand with minecraft:air

effect clear @s

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes
execute as @s at @s run function ogvz:misc/clear_scoreboards

tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class
tag @s add ogvz.dwarf.class.hero
tag @s add ogvz.dwarf.class.hero.dragon_warrior
tag @s add ogvz.mana

team join d0DRAGON_WARRIOR @s

execute as @s at @s run function ogvz:misc/drop_armor

# Equips the hero with their armor.
item replace entity @s armor.head with minecraft:golden_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Dragon Warrior Helmet","color":"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"head",id:"ogvz:head"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"head",id:"ogvz:head"} \
  ] \
]
item replace entity @s armor.chest with minecraft:golden_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Dragon Warrior Chestplate","color":"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":5, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:8,operation:"add_value",slot:"chest",id:"ogvz:chest"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"chest",id:"ogvz:chest"} \
  ] \
]
item replace entity @s armor.legs with minecraft:golden_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Dragon Warrior Leggings","color":"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":5, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:6,operation:"add_value",slot:"legs",id:"ogvz:legs"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ] \
]
item replace entity @s armor.feet with minecraft:golden_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Dragon Warrior Boots","color":"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:feather_falling":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
  ] \
]

# Gives the hero all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4000}, \
  minecraft:item_model="ogvz:golden_flail", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name={"text":"Golden Flail","color":"gold","bold":true}, \
  minecraft:lore=[ \
    {"text":"Conjure Wall","color":"blue","italic":false,"underlined":true}, \
    {"text":"Conjures a stone brick wall in","color":"blue"}, \
    {"text":"front of you.","color":"blue"}, \
    {"text":"Requires 8 mana","color":"red","italic":false}, \
    {"text":"Secondary Use","color":"green","italic":false}, \
    {"text":" "}, \
    {"text":"When in Main Hand:","color":"gray","italic":false}, \
    {"text":" 12 Attack Damage","color":"dark_green","italic":false}, \
    {"text":" 1.3 Attack Speed","color":"dark_green","italic":false}, \
    {"text":" 3 Attack Reach","color":"dark_green","italic":false}, \
    {"text":"Unbreakable","color":"blue","italic":false}, \
    {"text":"Heroic Item","color":"gold","italic":false,"bold":true} \
  ], \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:attack_damage",amount:11.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:attack_speed",amount:-2.7,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable", \
      "minecraft:attribute_modifiers" \
    ] \
  } \
]

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4001}, \
  minecraft:item_model="ogvz:dragon_scale", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name={"text":"Dragon Scale","color":"gray","bold":true}, \
  minecraft:lore=[ \
    {"text":"Unleashes your dragon form,","color":"blue"}, \
    {"text":"granting you a boost in damage","color":"blue"}, \
    {"text":"and speed while also granting","color":"blue"}, \
    {"text":"you wings.","color":"blue"}, \
    {"text":"After taking enough damage you","color":"blue"}, \
    {"text":"will revert back into your","color":"blue"}, \
    {"text":"regular form.","color":"blue"}, \
    {"text":"300 second cooldown","color":"red","italic":false}, \
    {"text":"Requires 50 mana","color":"red","italic":false}, \
    {"text":"Active Item","color":"green","italic":false}, \
    {"text":"Heroic Item","color":"gold","italic":false,"bold":true} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4002}, \
  minecraft:item_model="ogvz:dwarven_ruby", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name={"text":"Dwarven Ruby","color":"red","bold":true}, \
  minecraft:lore=[ \
    {"text":"Restores a large amount of mana","color":"blue"}, \
    {"text":"to all non-hero dwarves.","color":"blue"}, \
    {"text":"60 second cooldown","color":"red","italic":false}, \
    {"text":"Requires 30 mana","color":"red","italic":false}, \
    {"text":"Active Item","color":"green","italic":false}, \
    {"text":"Heroic Item","color":"gold","italic":false,"bold":true} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

tellraw @a [ \
  "", \
  {"text":"▶ ","bold":true,"color":"gold"}, \
  {"text":"Due to their valiant efforts, ","color":"yellow"}, \
  {"selector":"@s"}, \
  {"text":" has been proclaimed as a ","color":"yellow"}, \
  {"text":"Hero","color":"gold","bold":true}, \
  {"text":"!","color":"yellow"} \
]

playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0.04 30
