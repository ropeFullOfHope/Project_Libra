# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: zombie
# Function Name: dvz:zombie/disc/zombie_variant/zombie
# File Purpose: Spawn items for the zombie zombie class.
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

effect give @s minecraft:night_vision infinite 0 true
effect give @s minecraft:conduit_power infinite 0 true

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

tag @s add ogvz.zombie
tag @s add ogvz.zombie.class
tag @s add ogvz.zombie.class.zombie_variant
tag @s add ogvz.zombie.class.zombie_variant.zombie
tag @s add ogvz.zombie.suicide_pill

team join z0ZOMBIE @s

# Equips the zombie with their armor (iron tier).
item replace entity @s armor.head with minecraft:zombie_head[ \
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
  minecraft:item_name='{"text":"Zombie Chestplate"}', \
  minecraft:dyed_color={ \
    rgb:44975, \
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
  minecraft:item_name='{"text":"Zombie Leggings"}', \
  minecraft:dyed_color={ \
    rgb:4602533, \
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
  minecraft:item_name='{"text":"Zombie Boots"}', \
  minecraft:dyed_color={ \
    rgb:4602533, \
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

# Equips the zombie with a shield in their off-hand.
item replace entity @s weapon.offhand with minecraft:shield[ \
  minecraft:unbreakable={} \
]

# Gives zombie all their items.
give @s minecraft:iron_sword[ \
  minecraft:unbreakable={}, \
  minecraft:lore=[ \
    '{"text":" "}', \
    '{"text":"When in Main Hand:","color":"gray","italic":false}', \
    '{"text":" 6 Attack Damage","color":"dark_green","italic":false}', \
    '{"text":" 1.6 Attack Speed","color":"dark_green","italic":false}', \
    '{"text":" 3 Attack Reach","color":"dark_green","italic":false}' \
  ], \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:attack_damage",name:"minecraft:attack_damage",amount:5.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
      {type:"minecraft:attack_speed",name:"minecraft:attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \
    ], \
    show_in_tooltip:false \
  } \
]
give @s minecraft:stone_axe[ \
  minecraft:unbreakable={}, \
  minecraft:lore=[ \
    '{"text":" "}', \
    '{"text":"When in Main Hand:","color":"gray","italic":false}', \
    '{"text":" 6 Attack Damage","color":"dark_green","italic":false}', \
    '{"text":" 1 Attack Speed","color":"dark_green","italic":false}', \
    '{"text":" 3 Attack Reach","color":"dark_green","italic":false}' \
  ], \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:attack_damage",name:"minecraft:attack_damage",amount:5.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
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
    '{"text":"Passive Item","color":"green","italic":false}' \
  ] \
]
