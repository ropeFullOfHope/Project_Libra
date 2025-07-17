# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: blacksmith
# Function Name: ogvz:dwarf/disk/blacksmith
# File Purpose: Spawn items for the blacksmith dwarf class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.04
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
tag @s add ogvz.dwarf.class.blacksmith
tag @s add ogvz.mana

team join d3BLACKSMITH @s

# Gives blacksmith all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3001}, \
  minecraft:item_model="ogvz:summoning_book_blacksmith", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Summoning Book","color":"green"}, \
  minecraft:lore=[ \
    {"text":"Conjures weapons and tools.","color":"blue"}, \
    {"text":"Requires 4 Clocks","italic":false,"color":"red"}, \
    {"text":"Requires 30 mana","italic":false,"color":"red"}, \
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
give @s minecraft:nether_bricks 64
give @s minecraft:nether_bricks 64
give @s minecraft:blast_furnace 4
give @s minecraft:crafting_table 1
give @s minecraft:netherrack 1
give @s minecraft:chest 2
give @s minecraft:oak_sign 3
give @s minecraft:gold_ore[ \
  minecraft:lore=[ \
    {"text":"Give to the blacksmith.","color":"blue"}, \
    {"text":"Smelt into gold ingots.","color":"blue"} \
  ] \
] 64
give @s minecraft:redstone_ore[ \
  minecraft:lore=[ \
    {"text":"Mine to get redstone.","color":"blue"} \
  ] \
] 4
give @s minecraft:coal[ \
  minecraft:lore=[ \
    {"text":"Share with baker.","color":"blue"}, \
    {"text":"Use to fuel the furnace.","color":"blue"} \
  ] \
] 8
execute as @s at @s run function ogvz:give/other/legendary_book

tellraw @s [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"You are a ","color":"yellow"}, \
  {"text":"Blacksmith","bold":true,"color":"blue"}, \
  {"text":". Your job is to make ","color":"yellow"}, \
  {"text":"Weapons","color":"gold"}, \
  {"text":" and\n   ","color":"yellow"}, \
  {"text":"Tools","color":"gold"}, \
  {"text":" for the dwarves.\n","color":"yellow"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"Begin by smelting ","color":"yellow"}, \
  {"text":"Gold","color":"gold"}, \
  {"text":", then combine it with ","color":"yellow"}, \
  {"text":"Redstone","color":"gold"}, \
  {"text":"\n   to craft ","color":"yellow"}, \
  {"text":"Clocks","color":"gold"}, \
  {"text":".\n","color":"yellow"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"You can get more ","color":"yellow"}, \
  {"text":"Gold Ore","color":"gold"}, \
  {"text":" from the ","color":"yellow"}, \
  {"text":"Tailor","color":"blue"}, \
  {"text":".","color":"yellow"} \
]

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

function ogvz:dwarf/doom_event_message