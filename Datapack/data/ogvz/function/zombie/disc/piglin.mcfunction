# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: piglin
# Function Name: dvz:zombie/disc/piglin
# File Purpose: Spawn items for the piglin zombie class.
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
tag @s add ogvz.zombie.class.piglin
tag @s add ogvz.zombie.suicide_pill

attribute @s minecraft:movement_speed modifier add ogvz.piglin.movement_speed 0.2 add_multiplied_total

team join z4PIGLIN @s

# Equips the piglin with their armor (leather tier).
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Piglin Head","color":"aqua"}, \
  minecraft:item_model="ogvz:piglin_head", \
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
  minecraft:item_name={"text":"Piglin Chestplate"}, \
  minecraft:dyed_color=7026980, \
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
  minecraft:item_name={"text":"Piglin Leggings"}, \
  minecraft:dyed_color=8670003, \
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
  minecraft:item_name={"text":"Piglin Boots"}, \
  minecraft:dyed_color=13997434, \
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

# Gives piglin all their items.
give @s minecraft:golden_pickaxe[ \
  minecraft:unbreakable={}, \
  minecraft:lore=[ \
    {"text":" "}, \
    {"text":"Curse of Unyielding","color":"blue","italic":false,"underlined":true}, \
    {"text":"You are limited to mining only ","color":"blue"}, \
    {"text":"certain types of blocks.","color":"blue"}, \
    {"text":"Curse Enchantment","color":"green","italic":false}, \
    {"text":" "}, \
    {"text":"When in Main Hand:","color":"gray","italic":false}, \
    {"text":" 0 Attack Damage","color":"dark_green","italic":false}, \
    {"text":" 1.2 Attack Speed","color":"dark_green","italic":false}, \
    {"text":" 3 Attack Reach","color":"dark_green","italic":false}, \
    {"text":"Unbreakable","color":"blue","italic":false}, \
    {"text":" "}, \
    {"text":"Can Break:","color":"gray","italic":false}, \
    {"text":"Dwarf Blocks","color":"dark_gray","italic":false}, \
    {"text":" "}, \
    {"text":"Cannot Break:","color":"gray","italic":false}, \
    {"text":"Reinforced Bricks","color":"dark_gray","italic":false}, \
    {"text":"Block of Gold","color":"dark_gray","italic":false} \
  ], \
  minecraft:enchantments={ \
    "ogvz:unyielding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:attack_damage",amount:-1.0,operation:"add_multiplied_total",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:attack_speed",amount:-2.8,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \ 
  ], \
  minecraft:can_break=[ \
    {blocks:"#ogvz:dwarf_blocks"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable", \
      "minecraft:attribute_modifiers", \
      "minecraft:can_break" \
    ] \
  } \
]
give @s minecraft:cooked_beef 64
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={passive_id:6400}, \
  minecraft:item_model="ogvz:evolution", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Evolution","color":"aqua"}, \
  minecraft:lore=[ \
    {"text":"You can gain experience by using","color":"blue"}, \
    {"text":"the golden pickaxe when near the","color":"blue"}, \
    {"text":"shrine.","color":"blue"}, \
    {"text":"After gaining enough experience,","color":"blue"}, \
    {"text":"you will evolve into a stronger","color":"blue"}, \
    {"text":"form.","color":"blue"}, \
    {"text":"When the arrow next to your","color":"blue"}, \
    {"text":"experience bar becomes green,","color":"blue"}, \
    {"text":"that means you are close enough","color":"blue"}, \
    {"text":"to the shrine to gain ","color":"blue"}, \
    {"text":"experience.","color":"blue"}, \
    {"text":"Passive Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
