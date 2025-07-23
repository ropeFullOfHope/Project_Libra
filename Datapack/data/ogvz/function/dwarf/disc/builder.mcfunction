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
  !minecraft:max_stack_size, \
  minecraft:item_name={"text":"Crab Claw"}, \
  minecraft:attribute_modifiers=[ \
    { \
      id:"ogvz:mainhand", \
      type:"minecraft:block_interaction_range", \
      amount:2.0, \
      operation:"add_value", \
      slot:"mainhand", \
      display:{ \
        type:"override", \
        value:{text:"+2 Block Reach",color:"blue"} \
      } \
    }, \
    { \
      id:"ogvz:offhand", \
      type:"minecraft:block_interaction_range", \
      amount:2.0, \
      operation:"add_value", \
      slot:"offhand", \
      display:{ \
        type:"override", \
        value:{text:"+2 Block Reach",color:"blue"} \
      } \
    } \
  ] \
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
give @s minecraft:iron_pickaxe[ \
  minecraft:item_name="Iron Paxel", \
  minecraft:item_model="ogvz:iron_paxel", \
  minecraft:enchantments={ \
    "minecraft:efficiency":2, \
    "minecraft:unbreaking":2 \
  }, \
  minecraft:attribute_modifiers=[ \
    { \
      id:"minecraft:base_attack_damage", \
      type:"minecraft:attack_damage", \
      amount:3.0, \
      operation:"add_value", \
      slot:"mainhand" \
    }, \
    { \
      id:"minecraft:base_attack_speed", \
      type:"minecraft:attack_speed", \
      amount:-2.8, \
      operation:"add_value", \
      slot:"mainhand" \
    }, \
    { \
      id:"minecraft:base_entity_interaction_range", \
      type:"minecraft:entity_interaction_range", \
      amount:0.0, \
      operation:"add_value", \
      slot:"mainhand", \
      display:{ \
        type:"override", \
        value:{text:" 3 Attack Reach",color:"dark_green"} \
      } \
    } \
  ], \
  minecraft:tool={ \
    damage_per_block:1, \
    rules:[ \
      { \
        blocks:"#minecraft:incorrect_for_diamond_tool", \
        correct_for_drops:false \
      }, \
      { \
        blocks:"#minecraft:sword_instantly_mines", \
        speed:3.4028235e+38 \
      }, \
      { \
        blocks:"minecraft:cobweb", \
        correct_for_drops:true, \
        speed:15.0 \
      }, \
      { \
        blocks:"#minecraft:mineable/pickaxe", \
        correct_for_drops:true, \
        speed:6.0 \
      }, \
      { \
        blocks:"#minecraft:mineable/shovel", \
        correct_for_drops:true, \
        speed:6.0 \
      }, \
      { \
        blocks:"#minecraft:mineable/axe", \
        correct_for_drops:true, \
        speed:6.0 \
      }, \
      { \
        blocks:"#minecraft:mineable/hoe", \
        correct_for_drops:true, \
        speed:6.0 \
      }, \
      { \
        blocks:"#minecraft:sword_efficient", \
        speed:1.5 \
      } \
    ] \
  } \
]
give @s minecraft:flint_and_steel
give @s minecraft:stone_bricks 64
give @s minecraft:stone_bricks 64
give @s minecraft:crafting_table 1
give @s minecraft:stonecutter 1
give @s minecraft:torch 32
execute as @s at @s run function ogvz:give/other/legendary_book

tellraw @s [ \
  "", \
  {"text":"▶ ","bold":true,"color":"gold"}, \
  {"text":"You are a ","color":"yellow"}, \
  {"text":"Builder","bold":true,"color":"green"}, \
  {"text":". Your job is to ","color":"yellow"}, \
  {"text":"build the keep","color":"gold"}, \
  {"text":".\n","color":"yellow"}, \
  {"text":"▶ ","bold":true,"color":"gold"}, \
  {"text":"Use your ","color":"yellow"}, \
  {"text":"Summoning Book","color":"gold"}, \
  {"text":" to conjure ","color":"yellow"}, \
  {"text":"Blocks","color":"gold"}, \
  {"text":".","color":"yellow"} \
]

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

function ogvz:misc/doom_event_message
