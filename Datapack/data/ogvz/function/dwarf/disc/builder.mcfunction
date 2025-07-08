# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: builder
# Function Name: ogvz:dwarf/disk/builder
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

execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes
execute as @s at @s run function ogvz:misc/clear_scoreboards

tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class
tag @s add ogvz.dwarf.class.builder
tag @s add ogvz.mana

team join d2BUILDER @s

# Equips the builder with builder armor.
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:item_name={"text":"Builder Helmet","color":"green"}, \
  minecraft:enchantments={ \
    "minecraft:respiration":3, \
    "minecraft:aqua_affinity":1 \
  } \
]
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:item_name={"text":"Builder Chestplate","color":"green"}, \
  minecraft:enchantments={ \
    "minecraft:protection":4 \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:item_name={"text":"Builder Leggings","color":"green"}, \
  minecraft:enchantments={ \
    "minecraft:swift_sneak":3 \
  } \
]
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:item_name={"text":"Builder Boots","color":"green"}, \
  minecraft:enchantments={ \
    "minecraft:feather_falling":4 \
  } \
]

# Gives builder all their items.
item replace entity @s weapon.offhand with minecraft:poisonous_potato[ \
  minecraft:item_model="ogvz:crab_claw", \
  !minecraft:food, \
  !minecraft:consumable, \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Crab Claw"}, \
  minecraft:lore=[ \
    {"text":" "}, \
    {"text":"When in Hand:","italic":false,"color":"gray"}, \
    {"text":"+2 Block Reach","italic":false,"color":"blue"} \
  ], \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:block_interaction_range",amount:2,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:block_interaction_range",amount:2,operation:"add_value",slot:"offhand",id:"ogvz:offhand"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable", \
      "minecraft:attribute_modifiers" \
    ] \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3000}, \
  minecraft:item_model="ogvz:summoning_book_builder", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Summoning Book","color":"green"}, \
  minecraft:lore=[ \
    {"text":"Conjures blocks.","color":"blue"}, \
    {"text":"30 second cooldown","italic":false,"color":"red"}, \
    {"text":"Active Item","italic":false,"color":"green"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s iron_pickaxe[ \
  minecraft:item_model="ogvz:iron_paxel", \
  minecraft:item_name={"text":"Iron Paxel"}, \
  minecraft:lore=[ \
    {"text":" "}, \
    {"color":"gray","italic":false,"text":"When in Main Hand:"}, \
    {"color":"dark_green","italic":false,"text":" 4 Attack Damage"}, \
    {"color":"dark_green","italic":false,"text":" 1.2 Attack Speed"}, \
    {"color":"dark_green","italic":false,"text":" 3 Attack Reach"} \
  ], \
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
    "minecraft:efficiency":2, \
    "minecraft:unbreaking":2 \
  }, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:attribute_modifiers" \
    ] \
  } \
]
give @s minecraft:flint_and_steel
give @s minecraft:stone_bricks 64
give @s minecraft:stone_bricks 64
give @s minecraft:crafting_table 1
give @s minecraft:stonecutter 1
give @s minecraft:torch 32
execute as @s at @s run function ogvz:give/legendary_book

tellraw @s [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"You are a ","color":"yellow"}, \
  {"text":"Builder","bold":true,"color":"green"}, \
  {"text":". Your job is to ","color":"yellow"}, \
  {"text":"build the keep","color":"gold"}, \
  {"text":".\n","color":"yellow"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"Use your ","color":"yellow"}, \
  {"text":"Summoning Book","color":"gold"}, \
  {"text":" to conjure ","color":"yellow"}, \
  {"text":"Blocks","color":"gold"}, \
  {"text":".","color":"yellow"} \
]

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

function ogvz:dwarf/doom_event_message