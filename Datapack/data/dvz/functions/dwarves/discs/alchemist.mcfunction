# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: alchemist
# Function Name: dvz:dwarves/disk/alchemist
# File Purpose: Spawn items for the alchemist dwarf class.
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

tag @s add alchemist
tag @s add selected_class
tag @s add mana
tag @s add mana_regen

team join d3ALCHEMIST @s

# Gives alchemist all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_model_data=3004, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Summoning Book","color":"green"}', \
  minecraft:lore=[ \
    '{"text":"Conjures Magic Potions.","color":"blue"}', \
    '{"text":"Requires 3 Mundane Potions","italic":false,"color":"red"}', \
    '{"text":"Requires 30 mana","italic":false,"color":"red"}', \
    '{"text":"Active Item","italic":false,"color":"green"}' \
  ] \
]
give @s minecraft:dark_prismarine 64
give @s minecraft:dark_prismarine 64
give @s minecraft:brewing_stand 2
give @s minecraft:cauldron 1
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_model_data=3105, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Water Wand","color":"aqua"}', \
  minecraft:lore=[ \
    '{"text":"Fills Cauldrons with water.","color":"blue"}', \
    '{"text":"5 second cooldown","italic":false,"color":"red"}', \
    '{"text":"Active Item","italic":false,"color":"green"}' \
  ] \
]
give @s minecraft:furnace
give @s minecraft:chest 2
give @s minecraft:oak_sign 3
give @s minecraft:glass_bottle[ \
  minecraft:lore=[ \
    '{"text":"Fill with Water to get Water Bottles.","color":"blue"}', \
    '{"text":"Put Water Bottles in Brewing Stand.","color":"blue"}' \
  ] \
] 24
give @s minecraft:blaze_powder[ \
  minecraft:lore=[ \
    '{"text":"Give to the Alchemist.","color":"blue"}', \
    '{"text":"Use to fuel the Brewing Stand.","color":"blue"}' \
  ] \
] 2
give @s minecraft:redstone[ \
  minecraft:lore=[ \
    '{"text":"Share with Alchemist.","color":"blue"}', \
    '{"text":"Use to craft Clocks.","color":"blue"}', \
    '{"text":"Use as brewing ingredient.","color":"blue"}' \
  ] \
] 8
give @s minecraft:cooked_porkchop 1
execute as @s at @s run function dvz:give/legendary_book

tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" You are an ","color":"yellow"}, \
  {"text":"Alchemist","bold":true,"color":"blue"}, \
  {"text":". You make ","color":"yellow"}, \
  {"text":"Magic Potions","color":"gold"}, \
  {"text":" for the\n   dwarves.\n","color":"yellow"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" Begin by using ","color":"yellow"}, \
  {"text":"Redstone","color":"gold"}, \
  {"text":" in the ","color":"yellow"}, \
  {"text":"Brewing Stand","color":"gold"}, \
  {"text":" to create\n   ","color":"yellow"}, \
  {"text":"Mundane Potions","color":"gold"}, \
  {"text":".\n","color":"yellow"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" You can get more ","color":"yellow"}, \
  {"text":"Redstone","color":"gold"}, \
  {"text":" from the ","color":"yellow"}, \
  {"text":"Blacksmith","color":"blue"}, \
  {"text":".","color":"yellow"} \
]

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

function dvz:dwarves/boss_message