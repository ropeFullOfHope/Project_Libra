# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: tailor
# Function Name: ogvz:dwarves/disk/tailor
# File Purpose: Spawn items for the tailor dwarf class.
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

tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class
tag @s add ogvz.dwarf.class.tailor
tag @s add ogvz.mana

team join d3TAILOR @s

# Gives tailor all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3002}, \
  minecraft:item_model="ogvz:summoning_book_tailor", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Summoning Book","color":"green"}', \
  minecraft:lore=[ \
    '{"text":"Conjures armor and shields.","color":"blue"}', \
    '{"text":"Requires 10 Dyes","italic":false,"color":"red"}', \
    '{"text":"Requires 30 mana","italic":false,"color":"red"}', \
    '{"text":"Active Item","italic":false,"color":"green"}' \
  ] \
]
give @s minecraft:wooden_shovel[ \
  minecraft:enchantments={ \
    "minecraft:silk_touch":1 \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3106}, \
  minecraft:item_model="ogvz:super_fertilizer", \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Super Fertilizer","color":"green"}', \
  minecraft:lore=[ \
    '{"text":"Allows flowers to grow in any","color":"blue"}', \
    '{"text":"biome.","color":"blue"}' \
  ] \
]
give @s minecraft:mud_bricks 64
give @s minecraft:mud_bricks 64
give @s minecraft:grass_block 20
give @s minecraft:chest 2
give @s minecraft:oak_sign 3
give @s minecraft:bone[ \
  minecraft:lore=[ \
    '{"text":"Give to the tailor.","color":"blue"}', \
    '{"text":"Craft into bone meal.","color":"blue"}' \
  ] \
] 16
give @s minecraft:bread[ \
  minecraft:lore=[ \
    '{"text":" "}', \
    '{"text":"When Consumed:","italic":false,"color":"gray"}', \
    '{"text":"+5 Nutrition","italic":false,"color":"blue"}', \
    '{"text":"+6 Saturation","italic":false,"color":"blue"}' \
  ] \
] 1
execute as @s at @s run function ogvz:give/legendary_book

tellraw @s [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"You are a ","color":"yellow"}, \
  {"text":"Tailor","bold":true,"color":"blue"}, \
  {"text":". You make ","color":"yellow"}, \
  {"text":"Armor","color":"gold"}, \
  {"text":" and ","color":"yellow"}, \
  {"text":"Shields","color":"gold"}, \
  {"text":" for the\n   dwarves.\n","color":"yellow"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"Begin by using your ","color":"yellow"}, \
  {"text":"Bone Meal","color":"gold"}, \
  {"text":" to get ","color":"yellow"}, \
  {"text":"Flowers","color":"gold"}, \
  {"text":", then\n   craft them into ","color":"yellow"}, \
  {"text":"Dye","color":"gold"}, \
  {"text":".\n","color":"yellow"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"You can get more ","color":"yellow"}, \
  {"text":"Bones","color":"gold"}, \
  {"text":" from the ","color":"yellow"}, \
  {"text":"Alchemist","color":"blue"}, \
  {"text":".","color":"yellow"} \
]

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

function ogvz:dwarves/doom_event_message