# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: husk
# Function Name: dvz:zombie/disc/zombie_variant/husk
# File Purpose: Spawn items for the husk zombie class.
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
tag @s add ogvz.zombie.class.zombie_variant.husk
tag @s add ogvz.zombie.suicide_pill

team join z0HUSK @s

# Equips the husk with their armor (iron tier).
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Husk Head","color":"aqua"}, \
  minecraft:item_model="ogvz:husk_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
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
  minecraft:item_name={"text":"Husk Chestplate"}, \
  minecraft:dyed_color=13875325, \
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
  minecraft:item_name={"text":"Husk Leggings"}, \
  minecraft:dyed_color=3353113, \
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
  minecraft:item_name={"text":"Husk Boots"}, \
  minecraft:dyed_color=3353113, \
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

# Equips the husk with a shield in their off-hand.
item replace entity @s weapon.offhand with minecraft:shield[ \
  minecraft:unbreakable={} \
]

# Gives husk all their items.
give @s minecraft:iron_hoe[ \
  minecraft:item_model="ogvz:iron_dagger", \
  minecraft:item_name={"text":"Iron Dagger","color":"white"}, \
  minecraft:unbreakable={}, \
  minecraft:lore=[ \
    {"text":" "}, \
    {"text":"When in Main Hand:","color":"gray","italic":false}, \
    {"text":" 5 Attack Damage","color":"dark_green","italic":false}, \
    {"text":" \u221E Attack Speed","color":"dark_green","italic":false}, \
    {"text":" 2.5 Attack Reach","color":"dark_green","italic":false} \
  ], \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:attack_damage",amount:4.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:attack_speed",amount:19996.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:entity_interaction_range",amount:-0.5,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:attribute_modifiers" \
    ] \
  } \
]
give @s minecraft:stone_axe[ \
  minecraft:unbreakable={}, \
  minecraft:lore=[ \
    {"text":" "}, \
    {"text":"When in Main Hand:","color":"gray","italic":false}, \
    {"text":" 6 Attack Damage","color":"dark_green","italic":false}, \
    {"text":" 1 Attack Speed","color":"dark_green","italic":false}, \
    {"text":" 3 Attack Reach","color":"dark_green","italic":false} \
  ], \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:attack_damage",amount:5.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:attack_speed",amount:-3.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:attribute_modifiers" \
    ] \
  } \
]
give @s minecraft:cooked_beef 64
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={passive_id:6000}, \
  minecraft:item_model="ogvz:undying_bond", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Undying Bond","color":"red"}, \
  minecraft:lore=[ \
    {"text":"Gain regeneration when near","color":"blue"}, \
    {"text":"another zombie variant.","color":"blue"}, \
    {"text":"Passive Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
