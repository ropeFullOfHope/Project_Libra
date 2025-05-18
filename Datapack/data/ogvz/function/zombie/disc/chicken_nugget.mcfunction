# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: chicken_nugget
# Function Name: dvz:zombie/disc/chicken_nugget
# File Purpose: Spawn items for the chicken nugget zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2025.05.03
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
tag @s add ogvz.zombie.class.chicken_nugget
tag @s add ogvz.zombie.suicide_pill

team join z3CHICKEN_NUGGET @s

# Equip the chicken nugget with their armor (leather tier).
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Chicken Nugget Head","color":"aqua"}, \
  minecraft:item_model="ogvz:chicken_nugget_head", \
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
  minecraft:item_name={"text":"Chicken Nugget Chestplate"}, \
  minecraft:dyed_color=16777215, \
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
  minecraft:item_name={"text":"Chicken Nugget Leggings"}, \
  minecraft:dyed_color=14728041, \
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
  minecraft:item_name={"text":"Chicken Nugget Boots"}, \
  minecraft:dyed_color=16573808, \
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

# Give chicken nugget all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6310}, \
  minecraft:item_model="ogvz:eggsplosive_egg", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Eggsplosive Egg","color":"gray"}, \
  minecraft:lore=[ \
    {"text":"Shoot an egg that explodes on","color":"blue"}, \
    {"text":"impact.","color":"blue"}, \
    {"text":"2 second cooldown","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6311,passive_id:6310,disabled:0}, \
  minecraft:item_model="ogvz:featherlight", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Featherlight","color":"gray"}, \
  minecraft:lore=[ \
    {"text":"Grants permanent slow falling.","color":"blue"}, \
    {"text":"Sneak to temporary remove the","color":"blue"}, \
    {"text":"effect.","color":"blue"}, \
    {"text":"Togglable","color":"blue","italic":false}, \
    {"text":"Passive Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={passive_id:6311}, \
  minecraft:item_model="ogvz:flutter", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Flutter","color":"gray"}, \
  minecraft:lore=[ \
    {"text":"Turn into a fireball and fly in","color":"blue"}, \
    {"text":"the direction you are looking.","color":"blue"}, \
    {"text":"You are invulnerable in this","color":"blue"}, \
    {"text":"state.","color":"blue"}, \
    {"text":"15 second cooldown","color":"red","italic":false}, \
    {"text":"Passive Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:cooked_chicken 64
