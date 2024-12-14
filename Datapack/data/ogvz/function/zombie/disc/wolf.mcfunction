# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: wolf
# Function Name: dvz:zombie/disc/wolf
# File Purpose: Spawn items for the wolf zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.07
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

clear @s
effect clear @s

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes
execute as @s at @s run function ogvz:misc/clear_scoreboards

tag @s add ogvz.zombie
tag @s add ogvz.zombie.class
tag @s add ogvz.zombie.class.wolf
tag @s add ogvz.zombie.suicide_pill

attribute @s minecraft:movement_speed modifier add ogvz.wolf.movement_speed 0.4 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ogvz.wolf.jump_strength 0.2 add_value
attribute @s minecraft:safe_fall_distance modifier add ogvz.wolf.safe_fall_distance 3.0 add_value

team join z3WOLF @s

# Equips the wolf with their armor (chain tier).
item replace entity @s armor.head with minecraft:player_head[ \
  minecraft:item_name='{"text":"Wolf Head","color":"aqua"}', \
  minecraft:profile={ \
    properties:[{ \
      name:"textures", \
      value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjZjZTA5YmE5ZTU2NDExYTRlOGNjMDI2Zjc1NzM2M2JkN2NkMzkwMDgzMmY5NjQ0OTUxYmYyOTYxOGM4MjM0YSJ9fX0=" \
    }] \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":2, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",amount:2,operation:"add_value",slot:"head",id:"ogvz:head"}, \
    ] \
  } \
]
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Wolf Chestplate"}', \
  minecraft:dyed_color={ \
    rgb:13881295, \
    show_in_tooltip:false \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":5, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",amount:6,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Wolf Leggings"}', \
  minecraft:dyed_color={ \
    rgb:13289416, \
    show_in_tooltip:false \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":4, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",amount:5,operation:"add_value",slot:"legs",id:"ogvz:legs"}, \
    ] \
  } \
]
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Wolf Boots"}', \
  minecraft:dyed_color={ \
    rgb:10459798, \
    show_in_tooltip:false \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":1, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
    ] \
  } \
]

# Gives wolf all their items.
give @s minecraft:iron_sword[ \
  minecraft:unbreakable={}, \
  minecraft:lore=[ \
    '{"text":" "}', \
    '{"text":"Wolf Rally","color":"blue","italic":false,"underlined":true}', \
    '{"text":"Attacking temporarily increases","color":"blue"}', \
    '{"text":"the strength of your wolves.","color":"blue"}', \
    '{"text":"Enchantment","color":"green","italic":false}', \
    '{"text":" "}', \
    '{"text":"When in Main Hand:","color":"gray","italic":false}', \
    '{"text":" 6 Attack Damage","color":"dark_green","italic":false}', \
    '{"text":" 1.6 Attack Speed","color":"dark_green","italic":false}', \
    '{"text":" 3 Attack Reach","color":"dark_green","italic":false}' \
  ], \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:sharpness":5, \
      "ogvz:wolf_rally":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:attack_damage",amount:5.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
      {type:"minecraft:attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    ], \
    show_in_tooltip:false \
  } \
]
give @s minecraft:cooked_beef 64
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6350}, \
  minecraft:item_model="ogvz:howl", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Howl","color":"gray"}', \
  minecraft:lore=[ \
    '{"text":"Summon a pack of wolves to fight","color":"blue"}', \
    '{"text":"for you.","color":"blue"}', \
    '{"text":"Single-use","color":"red","italic":false}', \
    '{"text":"Active Ability","color":"green","italic":false}' \
  ] \
]
