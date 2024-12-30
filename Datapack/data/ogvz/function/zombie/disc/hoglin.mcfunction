# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: hoglin
# Function Name: dvz:zombie/disc/hoglin
# File Purpose: Spawn items for the hoglin zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.11
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
tag @s add ogvz.zombie.class.hoglin
tag @s add ogvz.zombie.suicide_pill

attribute @s minecraft:max_health modifier add ogvz.hoglin.max_health 12 add_value

effect give @s minecraft:instant_health 1 5 true

team join z5HOGLIN @s

# Equips the hoglin with their armor (iron tier).
item replace entity @s armor.head with minecraft:player_head[ \
  minecraft:item_name='{"text":"Hoglin Head","color":"aqua"}', \
  minecraft:profile={ \
    properties:[{ \
      name:"textures", \
      value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2FkN2I1YWViMjIwYzA3OWUzMTljZDcwYWM4ODAwZTgwNzc0YTkzMTNjMjJmMzhlNzdhZmI4OTk5OWU2ZWM4NyJ9fX0=" \
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
      {type:"minecraft:armor",amount:2,operation:"add_value",slot:"head",id:"ogvz:head"}, \
    ] \
  } \
]
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Hoglin Chestplate"}', \
  minecraft:dyed_color={ \
    rgb:10838864, \
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
      {type:"minecraft:armor",amount:6,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Hoglin Leggings"}', \
  minecraft:dyed_color={ \
    rgb:10838864, \
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
  minecraft:item_name='{"text":"Hoglin Boots"}', \
  minecraft:dyed_color={ \
    rgb:10838864, \
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
      {type:"minecraft:armor",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
    ] \
  } \
]

# Gives hoglin all their items.
give @s minecraft:golden_axe[ \
  minecraft:unbreakable={show_in_tooltip:true}, \
  minecraft:lore=[ \
    '{"text":" "}', \
    '{"text":"Hunger Drain","color":"blue","italic":false,"underlined":true}', \
    '{"text":"Attacks inflict hunger.","color":"blue"}', \
    '{"text":"Enchantment","color":"green","italic":false}', \
    '{"text":" "}', \
    '{"text":"When in Main Hand:","color":"gray","italic":false}', \
    '{"text":" 10 Attack Damage","color":"dark_green","italic":false}', \
    '{"text":" 1 Attack Speed","color":"dark_green","italic":false}', \
    '{"text":" 3 Attack Reach","color":"dark_green","italic":false}' \
  ], \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:sharpness":5, \
      "ogvz:hunger_drain":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:attack_damage",amount:9.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
      {type:"minecraft:attack_speed",amount:-3.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \ 
    ], \
    show_in_tooltip:false \
  } \
]
give @s minecraft:cooked_beef 64
