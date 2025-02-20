# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: snowman
# Function Name: dvz:zombie/disc/snowman
# File Purpose: Spawn items for the snowman zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2025.02.16
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
tag @s add ogvz.zombie.class.snowman
tag @s add ogvz.zombie.suicide_pill

tag @s add ogvz.zombie.element
tag @s add ogvz.zombie.element.ice

team join z3SNOWMAN @s

# Equips the snowman with their armor (leather tier).
item replace entity @s armor.head with minecraft:carved_pumpkin[ \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",amount:1,operation:"add_value",slot:"head",id:"ogvz:head"}, \
    ] \
  }, \
  minecraft:equippable={slot:"head"} \
]
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Snowman Chestplate"}', \
  minecraft:dyed_color={ \
    rgb:15663103, \
    show_in_tooltip:false \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:binding_curse":1, \
      "ogvz:ice_immunity":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",amount:3,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Snowman Leggings"}', \
  minecraft:dyed_color={ \
    rgb:16777215, \
    show_in_tooltip:false \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",amount:2,operation:"add_value",slot:"legs",id:"ogvz:legs"}, \
    ] \
  } \
]
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Snowman Boots"}', \
  minecraft:dyed_color={ \
    rgb:15663103, \
    show_in_tooltip:false \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:frost_walker":2, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",amount:1,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
    ] \
  } \
]

# Gives snowman all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6340}, \
  minecraft:item_model="ogvz:snowball_barrage", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Snowball Barrage","color":"aqua"}', \
  minecraft:lore=[ \
    '{"text":"Lob a barrage of damaging","color":"blue"}', \
    '{"text":"snowballs.","color":"blue"}', \
    '{"text":"The power of your throw is","color":"blue"}', \
    '{"text":"determined by how high you are","color":"blue"}', \
    '{"text":"looking.","color":"blue"}', \
    '{"text":"8 second cooldown","color":"red","italic":false}', \
    '{"text":"Active Ability","color":"green","italic":false}' \
  ] \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6341}, \
  minecraft:item_model="ogvz:freeze", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Freeze","color":"aqua"}', \
  minecraft:lore=[ \
    '{"text":"Shoot a freezing ice beam.","color":"blue"}', \
    '{"text":"30 second cooldown","color":"red","italic":false}', \
    '{"text":"Active Ability","color":"green","italic":false}' \
  ] \
]
give @s minecraft:cooked_beef 64
