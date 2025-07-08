# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: enchanter
# Function Name: ogvz:dwarf/disk/enchanter
# File Purpose: Spawn items for the enchanter dwarf class.
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
tag @s add ogvz.dwarf.class.enchanter
tag @s add ogvz.mana

team join d3ENCHANTER @s

# Gives enchanter all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3005}, \
  minecraft:item_model="ogvz:summoning_book_enchanter", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Summoning Book","color":"green"}, \
  minecraft:lore=[ \
    {"text":"Conjures lapis lazuli.","color":"blue"}, \
    {"text":"Requires 1 Emerald","italic":false,"color":"red"}, \
    {"text":"Active Item","italic":false,"color":"green"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:smooth_quartz 64
give @s minecraft:smooth_quartz 64
give @s minecraft:enchanting_table 1
give @s minecraft:bookshelf 18
give @s minecraft:anvil 4
give @s minecraft:grindstone 1
give @s minecraft:chest 12
give @s minecraft:oak_sign 3
give @s minecraft:lapis_lazuli[ \
  minecraft:lore=[ \
    {"text":"Use to enchant.","color":"blue"} \
  ] \
] 30
execute as @s at @s run function ogvz:give/legendary_book

tellraw @s [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"You are an ","color":"yellow"}, \
  {"text":"Enchanter","bold":true,"color":"blue"}, \
  {"text":". You enchant ","color":"yellow"}, \
  {"text":"Armor","color":"gold"}, \
  {"text":", ","color":"yellow"}, \
  {"text":"Weapons","color":"gold"}, \
  {"text":" and\n   ","color":"yellow"}, \
  {"text":"Tools","color":"gold"}, \
  {"text":" for the dwarves.\n","color":"yellow"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"Begin by using your ","color":"yellow"}, \
  {"text":"Summoning Book","color":"gold"}, \
  {"text":" to get ","color":"yellow"}, \
  {"text":"Lapis Lazuli","color":"gold"}, \
  {"text":",\n   then use it to enchant at the ","color":"yellow"}, \
  {"text":"Enchanting Table","color":"gold"}, \
  {"text":".\n","color":"yellow"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"You can get more ","color":"yellow"}, \
  {"text":"Emeralds","color":"gold"}, \
  {"text":" from other ","color":"yellow"}, \
  {"text":"Dwarves","color":"aqua"}, \
  {"text":".","color":"yellow"} \
]

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

function ogvz:dwarf/doom_event_message