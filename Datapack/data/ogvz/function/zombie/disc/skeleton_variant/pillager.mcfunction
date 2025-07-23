# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: pillager
# Function Name: dvz:zombie/disc/skeleton_variant/pillager
# File Purpose: Spawn items for the pillager zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.30
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
tag @s add ogvz.zombie.class.skeleton_variant
tag @s add ogvz.zombie.class.skeleton_variant.pillager
tag @s add ogvz.zombie.punish

team join z1PILLAGER @s

# Equips the pillager with their armor (chainmail tier).
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Pillager Head","color":"aqua"}, \
  minecraft:item_model="ogvz:pillager_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":1, \
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
  minecraft:item_name={"text":"Pillager Chestplate"}, \
  minecraft:dyed_color=4924973, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":2, \
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
  minecraft:item_name={"text":"Pillager Leggings"}, \
  minecraft:dyed_color=1976874, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":1, \
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
  minecraft:item_name={"text":"Pillager Boots"}, \
  minecraft:dyed_color=6239777, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":1, \
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

# Gives pillager all their items.
give @s minecraft:crossbow[ \
  minecraft:unbreakable={}, \
  minecraft:enchantments={ \
    "minecraft:power":3, \
    "minecraft:infinity":1 \
  } \
]
give @s minecraft:vine 64
give @s minecraft:cooked_beef 64
give @s minecraft:arrow 1

# Give the player the punish tag and set a timer for it's removal.
tag @s add ogvz.zombie.punish
scoreboard players set @s ogvz.zombie.punish_timer.ticks 600

# Give the player the Suicide Pill.
execute as @s at @s run function ogvz:give/hidden/suicide_pill_slot_0

# Give the player the "Ender Eye" ability if the ender portal exists.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] as @s at @s run function ogvz:give/other/teleport_to_ender_portal_ender_eye
