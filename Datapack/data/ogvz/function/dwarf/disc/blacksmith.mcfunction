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
    {"text":"Requires 5 Clocks","italic":false,"color":"red"}, \
    {"text":"Requires 30 mana","italic":false,"color":"red"}, \
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
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable", \
      "minecraft:attribute_modifiers" \
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
] 80
give @s minecraft:redstone_ore[ \
  minecraft:lore=[ \
    {"text":"Mine to get redstone.","color":"blue"} \
  ] \
] 5
give @s minecraft:coal[ \
  minecraft:lore=[ \
    {"text":"Share with baker.","color":"blue"}, \
    {"text":"Use to fuel the furnace.","color":"blue"} \
  ] \
] 10
execute as @s at @s run function ogvz:give/legendary_book

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