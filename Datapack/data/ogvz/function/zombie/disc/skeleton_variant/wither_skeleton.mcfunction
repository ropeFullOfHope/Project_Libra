# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: wither_skeleton
# Function Name: dvz:zombie/disc/skeleton_variant/wither_skeleton
# File Purpose: Spawn items for the wither skeleton zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.30
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
tag @s add ogvz.zombie.class.skeleton_variant
tag @s add ogvz.zombie.class.skeleton_variant.wither_skeleton
tag @s add ogvz.zombie.suicide_pill

team join z1WITHER_SKELETON @s

# Equips the wither skeleton with their armor (chainmail tier).
item replace entity @s armor.head with minecraft:wither_skeleton_skull[ \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":1, \
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
  minecraft:item_name='{"text":"Wither Skeleton Chestplate"}', \
  minecraft:dyed_color={ \
    rgb:3684408, \
    show_in_tooltip:false \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":2, \
      "minecraft:binding_curse":1 \
    } \
  }, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:armor",amount:5,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Wither Skeleton Leggings"}', \
  minecraft:dyed_color={ \
    rgb:3684408, \
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
      {type:"minecraft:armor",amount:4,operation:"add_value",slot:"legs",id:"ogvz:legs"}, \
    ] \
  } \
]
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name='{"text":"Wither Skeleton Boots"}', \
  minecraft:dyed_color={ \
    rgb:3684408, \
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
      {type:"minecraft:armor",amount:1,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
    ] \
  } \
]

# Gives wither skeleton all their items.
give @s minecraft:bow[ \
  minecraft:unbreakable={}, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:infinity":1, \
      "ogvz:decay":2 \
    } \
  } \
]
give @s minecraft:vine 64
give @s minecraft:cooked_beef 64
give @s minecraft:arrow 1
