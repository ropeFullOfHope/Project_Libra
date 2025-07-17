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
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Wolf Head","color":"aqua"}, \
  minecraft:item_model="ogvz:wolf_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":2, \
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
  minecraft:item_name={"text":"Wolf Chestplate"}, \
  minecraft:dyed_color=13881295, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":3, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:5,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Wolf Leggings"}, \
  minecraft:dyed_color=13289416, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":3, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:4,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Wolf Boots"}, \
  minecraft:dyed_color=10459798, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":2, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:1,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]

# Gives wolf all their items.
give @s minecraft:iron_sword[ \
  minecraft:unbreakable={}, \
  minecraft:lore=[ \
    {"text":" "}, \
    {"text":"Wolf Rally","color":"blue","italic":false,"underlined":true}, \
    {"text":"Attacking temporarily increases","color":"blue"}, \
    {"text":"the strength of your wolves.","color":"blue"}, \
    {"text":"Enchantment","color":"green","italic":false}, \
    {"text":" "}, \
    {"text":"When in Main Hand:","color":"gray","italic":false}, \
    {"text":" 6 Attack Damage","color":"dark_green","italic":false}, \
    {"text":" 1.6 Attack Speed","color":"dark_green","italic":false}, \
    {"text":" 3 Attack Reach","color":"dark_green","italic":false} \
  ], \
  minecraft:enchantments={ \
    "minecraft:sharpness":5, \
    "ogvz:wolf_rally":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:attack_damage",amount:5.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:attribute_modifiers" \
    ] \
  } \
]
give @s minecraft:cooked_mutton[ \
  minecraft:food={ \
    nutrition:8, \
    saturation:12.8 \
  } \
] 64
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6360}, \
  minecraft:item_model="ogvz:howl", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Howl","color":"gray"}, \
  minecraft:lore=[ \
    {"text":"Summon a pack of wolves to fight","color":"blue"}, \
    {"text":"for you.","color":"blue"}, \
    {"text":"Single-use","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

# Give the player the "Ender Eye" ability if the ender portal exists.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] as @s at @s run function ogvz:give/other/teleport_to_ender_portal_ender_eye
