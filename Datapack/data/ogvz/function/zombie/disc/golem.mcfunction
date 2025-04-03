# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: golem
# Function Name: dvz:zombie/disc/golem
# File Purpose: Spawn items for the golem zombie class.
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
tag @s add ogvz.zombie.class.golem
tag @s add ogvz.zombie.suicide_pill

attribute @s minecraft:max_health modifier add ogvz.golem.max_health 20.0 add_value
attribute @s minecraft:attack_damage modifier add ogvz.golem.attack_damage 999.0 add_multiplied_total
attribute @s minecraft:attack_speed modifier add ogvz.golem.attack_speed -0.75 add_multiplied_total
attribute @s minecraft:knockback_resistance modifier add ogvz.golem.knockback_resistance 1.0 add_value
attribute @s minecraft:explosion_knockback_resistance modifier add ogvz.golem.explosion_knockback_resistance 1.0 add_value
attribute @s minecraft:movement_speed modifier add ogvz.golem.movement_speed -0.6 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ogvz.golem.jump_strength -1.0 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier add ogvz.golem.fall_damage_multiplier -1.0 add_multiplied_total

team join z6GOLEM @s

# Equips the golem with their armor (iron tier).
item replace entity @s armor.head with minecraft:iron_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Golem Head","color":"aqua"}, \
  minecraft:item_model="ogvz:golem_head", \
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
item replace entity @s armor.chest with minecraft:iron_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Golem Chestplate"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:6,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
  ] \
]
item replace entity @s armor.legs with minecraft:iron_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Golem Leggings"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:5,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ] \
]
item replace entity @s armor.feet with minecraft:iron_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Golem Boots"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
  ] \
]

# Gives golem all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6610}, \
  minecraft:item_model="ogvz:fissure", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Fissure","color":"gray"}, \
  minecraft:lore=[ \
    {"text":"Raise the ground in a straight","color":"blue"}, \
    {"text":"line in front of you.","color":"blue"}, \
    {"text":"5 second cooldown","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6611}, \
  minecraft:item_model="ogvz:leap", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Leap","color":"green"}, \
  minecraft:lore=[ \
    {"text":"Jump high into the air.","color":"blue"}, \
    {"text":"20 second cooldown","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:cooked_beef 64
