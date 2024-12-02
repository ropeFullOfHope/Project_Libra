# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: wither_warrior
# Function Name: ogvz:dwarf/disc/hero/wither_warrior
# File Purpose: Spawn items for the wither warrior hero.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.01
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

# Remove all dwarf class tags.
tag @s remove ogvz.dwarf.class.builder
tag @s remove ogvz.dwarf.class.blacksmith
tag @s remove ogvz.dwarf.class.tailor
tag @s remove ogvz.dwarf.class.baker
tag @s remove ogvz.dwarf.class.alchemist
tag @s remove ogvz.dwarf.class.enchanter

tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class
tag @s add ogvz.dwarf.class.hero
tag @s add ogvz.dwarf.class.hero.wither_warrior
tag @s add ogvz.mana

team join d0WITHER_WARRIOR @s

execute as @s at @s run function ogvz:misc/drop_armor

# Equips the hero with their armor.
item replace entity @s armor.head with minecraft:netherite_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Wither Warrior Helmet","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":4, \
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
item replace entity @s armor.chest with minecraft:netherite_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Wither Warrior Chestplate","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":5, \
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
item replace entity @s armor.legs with minecraft:netherite_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Wither Warrior Leggings","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":4, \
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
item replace entity @s armor.feet with minecraft:netherite_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Wither Warrior Boots","color":"gold"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":4, \
      "minecraft:feather_falling":4, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",name:"minecraft:armor",amount:3,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
      {type:"minecraft:armor_toughness",name:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
    ] \
  } \
]

# Gives the hero all their items.
give @s minecraft:bow[ \
  minecraft:item_model="ogvz:whispersong", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name='{"text":"Whispersong","color":"aqua","bold":true}', \
  minecraft:lore=[ \
    '{"text":"Heroic Item","color":"gold","italic":false,"bold":true}' \
  ] \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4101}, \
  minecraft:item_model="ogvz:sunfury", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name='{"text":"Sunfury","color":"red","bold":true}', \
  minecraft:lore=[ \
    '{"text":"Heroic Item","color":"gold","italic":false,"bold":true}' \
  ] \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={passive_id:4102}, \
  minecraft:item_model="ogvz:soulstone", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name='{"text":"Soulstone","color":"light_purple","bold":true}', \
  minecraft:lore=[ \
    '{"text":"Every time you get a kill, all","color":"blue"}', \
    '{"text":"non-hero dwarves gain a small","color":"blue"}', \
    '{"text":"amount of mana.","color":"blue"}', \
    '{"text":"Passive Item","color":"green","italic":false}', \
    '{"text":"Heroic Item","color":"gold","italic":false,"bold":true}' \
  ] \
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
