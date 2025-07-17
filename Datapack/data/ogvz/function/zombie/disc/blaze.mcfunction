# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: blaze
# Function Name: dvz:zombie/disc/blaze
# File Purpose: Spawn items for the blaze zombie class.
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
tag @s add ogvz.zombie.class.blaze
tag @s add ogvz.zombie.suicide_pill

tag @s add ogvz.zombie.element
tag @s add ogvz.zombie.element.fire

team join z3BLAZE @s

# Equip the blaze with their armor (leather tier).
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Blaze Head","color":"aqua"}, \
  minecraft:item_model="ogvz:blaze_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1, \
    "ogvz:fire_immunity":1 \
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
  minecraft:item_name={"text":"Blaze Chestplate"}, \
  minecraft:dyed_color=16775239, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1, \
    "ogvz:fire_immunity":1 \
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
  minecraft:item_name={"text":"Blaze Leggings"}, \
  minecraft:dyed_color=16553472, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1, \
    "ogvz:fire_immunity":1 \
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
  minecraft:item_name={"text":"Blaze Boots"}, \
  minecraft:dyed_color=9122817, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1, \
    "ogvz:fire_immunity":1 \
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

# Give blaze all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6300}, \
  minecraft:item_model="ogvz:fireball", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Fireball","color":"gold"}, \
  minecraft:lore=[ \
    {"text":"Shoot a fireball that deals huge","color":"blue"}, \
    {"text":"damage and ignites nearby area","color":"blue"}, \
    {"text":"on fire.","color":"blue"}, \
    {"text":"The fireball has limited","color":"blue"}, \
    {"text":"lifetime and will eventually","color":"blue"}, \
    {"text":"burn out.","color":"blue"}, \
    {"text":"8 second cooldown","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6301}, \
  minecraft:item_model="ogvz:firefly", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Firefly","color":"gold"}, \
  minecraft:lore=[ \
    {"text":"Turn into a fireball and fly in","color":"blue"}, \
    {"text":"the direction you are looking.","color":"blue"}, \
    {"text":"You are invulnerable in this","color":"blue"}, \
    {"text":"state.","color":"blue"}, \
    {"text":"15 second cooldown","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6302}, \
  minecraft:item_model="ogvz:heat_wave", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Heat Wave","color":"gold"}, \
  minecraft:lore=[ \
    {"text":"Completely evaporate all the","color":"blue"}, \
    {"text":"water around you.","color":"blue"}, \
    {"text":"10 second cooldown","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:cooked_beef 64

# Give the player the "Ender Eye" ability if the ender portal exists.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] as @s at @s run function ogvz:give/other/teleport_to_ender_portal_ender_eye
