# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: builder
# Function Name: ogvz:dwarves/disk/builder
# File Purpose: Spawn items for the builder dwarf class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.03
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

tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class
tag @s add ogvz.dwarf.class.builder
tag @s add ogvz.mana

team join d2BUILDER @s

# Equips the builder with builder armor.
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:item_name='{"text":"Builder Helmet","color":"green"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:respiration":3, \
      "minecraft:aqua_affinity":1 \
    } \
  } \
]
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:item_name='{"text":"Builder Chestplate","color":"green"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:protection":3 \
    } \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:item_name='{"text":"Builder Leggings","color":"green"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:swift_sneak":3 \
    } \
  } \
]
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:item_name='{"text":"Builder Boots","color":"green"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:feather_falling":4 \
    } \
  } \
]

# Gives builder all their items.
item replace entity @s weapon.offhand with minecraft:warped_fungus_on_a_stick[ \
  minecraft:custom_model_data=1000, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Crab Claw"}', \
  minecraft:lore=[ \
    '{"text":" "}', \
    '{"text":"When in Hand:","italic":false,"color":"gray"}', \
    '{"text":"+2 Block Reach","italic":false,"color":"blue"}' \
  ], \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:player.block_interaction_range",name:"minecraft:player.block_interaction_range",amount:2,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
      {type:"minecraft:player.block_interaction_range",name:"minecraft:player.block_interaction_range",amount:2,operation:"add_value",slot:"offhand",id:"ogvz:offhand"} \
    ], \
    show_in_tooltip:false \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_model_data=3000, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Summoning Book","color":"green"}', \
  minecraft:lore=[ \
    '{"text":"Conjures blocks.","color":"blue"}', \
    '{"text":"30 second cooldown","italic":false,"color":"red"}', \
    '{"text":"Active Item","italic":false,"color":"green"}' \
  ] \
]
give @s minecraft:stone_bricks 64
give @s minecraft:stone_bricks 64
give @s minecraft:torch 32
give @s minecraft:fire_charge 8
give @s minecraft:cooked_porkchop[ \
  minecraft:lore=[ \
    '{"text":"Medium Meal","italic":false,"color":"gray"}', \
    '{"text":" "}', \
    '{"text":"When Consumed:","italic":false,"color":"gray"}', \
    '{"text":"+8 Nutrition","italic":false,"color":"blue"}', \
    '{"text":"+12.8 Saturation","italic":false,"color":"blue"}' \
  ] \
] 1
give @s iron_pickaxe[ \
  minecraft:custom_model_data=1000, \
  minecraft:item_name='{"text":"Iron Mattock"}', \
  minecraft:lore=[ \
    '{"text":" "}', \
    '{"color":"gray","italic":false,"text":"When in Main Hand:"}', \
    '{"color":"dark_green","italic":false,"text":" 4 Attack Damage"}', \
    '{"color":"dark_green","italic":false,"text":" 1.2 Attack Speed"}', \
    '{"color":"dark_green","italic":false,"text":" 3 Attack Reach"}' \
  ], \
  minecraft:attribute_modifiers={ \
    modifiers:[], \
    show_in_tooltip:false \
  }, \
  minecraft:tool={ \
    default_mining_speed:6, \
    rules:[ \
      {correct_for_drops:true,blocks:"#mineable/pickaxe"}, \
      {correct_for_drops:true,blocks:"#mineable/axe"}, \
      {correct_for_drops:true,blocks:"#mineable/shovel"}, \
      {correct_for_drops:true,blocks:"#mineable/hoe"} \
    ] \
  }, \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:efficiency":2, \
      "minecraft:unbreaking":2 \
    } \
  } \
]
give @s minecraft:stonecutter
execute as @s at @s run function ogvz:give/legendary_book

tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" You are a ","color":"yellow"}, \
  {"text":"Builder","bold":true,"color":"green"}, \
  {"text":". Your job is to ","color":"yellow"}, \
  {"text":"build the keep","color":"gold"}, \
  {"text":".\n","color":"yellow"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" Use your ","color":"yellow"}, \
  {"text":"Summoning Book","color":"gold"}, \
  {"text":" to conjure ","color":"yellow"}, \
  {"text":"Blocks","color":"gold"}, \
  {"text":".","color":"yellow"} \
]

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

function ogvz:dwarves/boss_message