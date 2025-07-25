#> Description: Turns the player into the phantom.

# Clear the player's inventory and effects.
clear @s
effect clear @s

# Fully heal and saturate the player.
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

# Remove tags, attributes and clear scoreboards off the player.
execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes
execute as @s at @s run function ogvz:misc/clear_scoreboards

# Give the player the proper tags.
tag @s add ogvz.zombie
tag @s add ogvz.zombie.class
tag @s add ogvz.zombie.class.phantom

# Decreases max health by 2 hearts using an attribute.
attribute @s minecraft:max_health modifier add ogvz.phantom.max_health -4 add_value

# Put the player on the phantom zombie team.
team join z3PHANTOM @s

### Equip the player with phantom armor (leather tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Phantom Head","color":"aqua"}, \
  minecraft:item_model="ogvz:phantom_head", \
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
# Chestplate
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Phantom Wings"}, \
  minecraft:dyed_color=2704794, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
  ], \
  minecraft:equippable={asset_id:"ogvz:phantom_wings",slot:"chest"}, \
  minecraft:glider={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
# Leggings
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Phantom Leggings"}, \
  minecraft:dyed_color=2704794, \
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
# Boots
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Phantom Boots"}, \
  minecraft:dyed_color=2704794, \
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

### Give the player all the phantom items.
# Reusable Firework Rocket (offhand)
item replace entity @s weapon.offhand with minecraft:firework_rocket[ \
  minecraft:item_name="Reusable Firework Rocket", \
  minecraft:fireworks={flight_duration:1}, \
  minecraft:use_cooldown={seconds:2.55}, \
  minecraft:use_remainder={ \
    id:"minecraft:poisonous_potato", \
    components:{ \
        "minecraft:item_model":"minecraft:firework_rocket", \
        "minecraft:item_name":"Broken Firework Rocket", \
        "minecraft:custom_data":{firework_remainder:1}, \
        "!minecraft:food":{}, \
        "!minecraft:consumable":{} \
    } \
  } \
]

# Iron Rapier
give @s minecraft:iron_hoe[ \
  minecraft:item_model="ogvz:iron_rapier", \
  minecraft:item_name={"text":"Iron Rapier","color":"aqua"}, \
  minecraft:unbreakable={}, \
  minecraft:lore=[ \
    {"text":" "}, \
    {"text":"Impact","color":"blue","italic":false,"underlined":true}, \
    {"text":"Deal more damage the faster you","color":"blue"}, \
    {"text":"are moving.","color":"blue"}, \
    {"text":"Enchantment","color":"green","italic":false}, \
    {"text":" "}, \
    {"text":"When in Main Hand:","color":"gray","italic":false}, \
    {"text":" 5 Attack Damage","color":"dark_green","italic":false}, \
    {"text":" 2.2 Attack Speed","color":"dark_green","italic":false}, \
    {"text":" 3 Attack Reach","color":"dark_green","italic":false} \
  ], \
  minecraft:enchantments={ \
    "ogvz:impact":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:attack_damage",amount:4.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:attack_speed",amount:-1.8,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:attribute_modifiers" \
    ] \
  } \
]
# Delirium
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6340}, \
  minecraft:item_model="ogvz:delirium", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Delirium","color":"gray"}, \
  minecraft:lore=[ \
    {"text":"Needs Description.","color":"blue"}, \
    {"text":"X second cooldown","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Steak x64
give @s minecraft:cooked_beef 64

# Give the player the Ender Eye ability if the ender portal exists.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] as @s at @s run function ogvz:give/other/ender_eye

# Give the player the Suicide Pill.
execute as @s at @s run function ogvz:give/hidden/suicide_pill_slot_0

# Give the player the punish tag and set a timer for it's removal.
tag @s add ogvz.zombie.punish
scoreboard players set @s ogvz.zombie.punish_timer.ticks 600
