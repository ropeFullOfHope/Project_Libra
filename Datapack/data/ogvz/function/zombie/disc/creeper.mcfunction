# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: creeper
# Function Name: dvz:zombie/disc/creeper
# File Purpose: Spawn items for the creeper zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.06
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
tag @s add ogvz.zombie.class.creeper
tag @s add ogvz.zombie.suicide_pill

team join z2CREEPER @s

# Equips the creeper with their armor (leather tier).
item replace entity @s armor.head with minecraft:creeper_head[ \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",name:"minecraft:armor",amount:1,operation:"add_value",slot:"head",id:"ogvz:head"}, \
    ] \
  } \
]
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Creeper Chestplate"}', \
  minecraft:dyed_color={ \
    rgb:42240, \
    show_in_tooltip:false \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",name:"minecraft:armor",amount:3,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Creeper Leggings"}', \
  minecraft:dyed_color={ \
    rgb:10082192, \
    show_in_tooltip:false \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",name:"minecraft:armor",amount:2,operation:"add_value",slot:"legs",id:"ogvz:legs"}, \
    ] \
  } \
]
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Creeper Boots"}', \
  minecraft:dyed_color={ \
    rgb:1854485, \
    show_in_tooltip:false \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",name:"minecraft:armor",amount:1,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
    ] \
  } \
]

# Gives creeper all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6200}, \
  minecraft:item_model="ogvz:explode", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Explode","color":"gray"}', \
  minecraft:lore=[ \
    '{"text":"Instantly explode.","color":"blue"}', \
    '{"text":"Single-Use","color":"red","italic":false}', \
    '{"text":"Active Ability","color":"green","italic":false}' \
  ] \
]
give @s minecraft:cooked_beef 64
