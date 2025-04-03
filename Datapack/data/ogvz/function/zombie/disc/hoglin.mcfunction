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
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Hoglin Head","color":"aqua"}, \
  minecraft:item_model="ogvz:hoglin_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":3, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"head",id:"ogvz:head"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Hoglin Chestplate"}, \
  minecraft:dyed_color=0xC98265, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:6,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Hoglin Leggings"}, \
  minecraft:dyed_color=0xC98265, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:5,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Hoglin Boots"}, \
  minecraft:dyed_color=0xC98265, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]

# Gives hoglin all their items.
give @s minecraft:golden_axe[ \
  minecraft:unbreakable={}, \
  minecraft:lore=[ \
    {"text":" "}, \
    {"text":"Hunger Drain","color":"blue","italic":false,"underlined":true}, \
    {"text":"Attacks inflict hunger.","color":"blue"}, \
    {"text":"Enchantment","color":"green","italic":false}, \
    {"text":" "}, \
    {"text":"When in Main Hand:","color":"gray","italic":false}, \
    {"text":" 10 Attack Damage","color":"dark_green","italic":false}, \
    {"text":" 1 Attack Speed","color":"dark_green","italic":false}, \
    {"text":" 3 Attack Reach","color":"dark_green","italic":false} \
  ], \
  minecraft:enchantments={ \
    "minecraft:sharpness":5, \
    "ogvz:hunger_drain":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:attack_damage",amount:9.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:attack_speed",amount:-3.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \ 
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:attribute_modifiers" \
    ] \
  } \
]
give @s minecraft:cooked_beef 64
