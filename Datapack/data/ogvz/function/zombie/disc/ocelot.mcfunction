clear @s
effect clear @s

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes
execute as @s at @s run function ogvz:misc/clear_scoreboards

tag @s add ogvz.zombie
tag @s add ogvz.zombie.class
tag @s add ogvz.zombie.class.ocelot
tag @s add ogvz.zombie.suicide_pill

tag @s add ogvz.mana

attribute @s minecraft:movement_speed modifier add ogvz.ocelot.movement_speed 0.4 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier add ogvz.ocelot.fall_damage_multiplier -1.0 add_multiplied_total

team join z3OCELOT @s

# Equips the creeper with their armor (leather tier).
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Ocelot Head","color":"aqua"}, \
  minecraft:item_model="ogvz:ocelot_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:1,operation:"add_value",slot:"head",id:"ogvz:head"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Ocelot Chestplate"}, \
  minecraft:dyed_color=16768372, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Ocelot Leggings"}, \
  minecraft:dyed_color=16180138, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Ocelot Boots"}, \
  minecraft:dyed_color=9327914, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
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

# Gives creeper all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6330}, \
  minecraft:item_model="ogvz:slapper_fish", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Slapper Fish","color":"aqua"}, \
  minecraft:lore=[ \
    {"text":" "}, \
    {"text":"Charge","color":"blue","italic":false,"underlined":true}, \
    {"text":"Increase the power of the","color":"blue"}, \
    {"text":"knocback for the next attack.","color":"blue"}, \
    {"text":"Requires 15 mana","color":"red","italic":false}, \
    {"text":"Enchantment","color":"green","italic":false} \
  ], \
  minecraft:enchantments={ \
    "minecraft:knockback":2 \
  }, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6331}, \
  minecraft:item_model="ogvz:mana_steal", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Mana Steal","color":"gold"}, \
  minecraft:lore=[ \
    {"text":"Shoot a mana stealing beam.","color":"blue"}, \
    {"text":"10 second cooldown","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6332}, \
  minecraft:item_model="ogvz:disarm", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Disarm","color":"red"}, \
  minecraft:lore=[ \
    {"text":"Apply weakness and mining","color":"blue"}, \
    {"text":"fatigue to all dwarves in front","color":"blue"}, \
    {"text":"of you.","color":"blue"}, \
    {"text":"Requires 45 mana","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:cooked_cod[ \
  minecraft:food={ \
    nutrition:8, \
    saturation:12.8 \
  } \
] 64
