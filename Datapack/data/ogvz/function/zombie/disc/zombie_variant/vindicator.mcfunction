# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: vindicator
# Function Name: dvz:zombie/disc/zombie_variant/vindicator
# File Purpose: Spawn items for the vindicator zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.05
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
tag @s add ogvz.zombie.class.zombie_variant
tag @s add ogvz.zombie.class.zombie_variant.vindicator
tag @s add ogvz.zombie.suicide_pill

team join z0VINDICATOR @s

# Equips the vindicator with their armor (iron tier).
item replace entity @s armor.head with minecraft:player_head[ \
  minecraft:item_name='{"text":"Vindicator Head","color":"aqua"}', \
  minecraft:profile={ \
    properties:[{ \
      name:"textures", \
      value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzJmYjgwYTZiNjgzM2UzMWQ5Y2U4MzEzYTU0Nzc3NjQ1ZjljMWU1NWI4MTA5MThhNzA2ZTdiY2M4ZDM1YTVhMiJ9fX0=" \
    }] \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":3, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",name:"minecraft:armor",amount:2,operation:"add_value",slot:"head",id:"ogvz:head"}, \
    ] \
  } \
]
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Vindicator Chestplate"}', \
  minecraft:dyed_color={ \
    rgb:4209720, \
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
      {type:"minecraft:armor",name:"minecraft:armor",amount:6,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Vindicator Leggings"}', \
  minecraft:dyed_color={ \
    rgb:2580065, \
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
      {type:"minecraft:armor",name:"minecraft:armor",amount:5,operation:"add_value",slot:"legs",id:"ogvz:legs"}, \
    ] \
  } \
]
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Vindicator Boots"}', \
  minecraft:dyed_color={ \
    rgb:1775896, \
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
      {type:"minecraft:armor",name:"minecraft:armor",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
    ] \
  } \
]

# Equips the vindicator with a shield in their off-hand.
item replace entity @s weapon.offhand with minecraft:shield[ \
  minecraft:unbreakable={} \
]

# Gives vindicator all their items.
give @s minecraft:iron_axe[ \
  minecraft:unbreakable={}, \
  minecraft:lore=[ \
    '{"text":" "}', \
    '{"text":"When in Main Hand:","color":"gray","italic":false}', \
    '{"text":" 8.5 Attack Damage","color":"dark_green","italic":false}', \
    '{"text":" 1 Attack Speed","color":"dark_green","italic":false}', \
    '{"text":" 3 Attack Reach","color":"dark_green","italic":false}' \
  ], \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:attack_damage",name:"minecraft:attack_damage",amount:7.5,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
      {type:"minecraft:attack_speed",name:"minecraft:attack_speed",amount:-3.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \
    ], \
    show_in_tooltip:false \
  } \
]
give @s minecraft:cooked_beef 64
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={passive_id:6000}, \
  minecraft:item_model="ogvz:undying_bond", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Undying Bond","color":"red"}', \
  minecraft:lore=[ \
    '{"text":"Gain regeneration when near","color":"blue"}', \
    '{"text":"another zombie variant.","color":"blue"}', \
    '{"text":"Passive Ability","color":"green","italic":false}' \
  ] \
]
