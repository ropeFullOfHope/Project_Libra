# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: blacksmith
# Function Name: dvz:dwarves/disk/blacksmith
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

tag @s add blacksmith
tag @s add selected_class
tag @s add mana
tag @s add mana_regen

team join d3BLACKSMITH @s

# Gives blacksmith all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_model_data=3001, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Summoning Book","color":"green"}', \
  minecraft:lore=[ \
    '{"text":"Conjures weapons and tools.","color":"blue"}', \
    '{"text":"Requires 5 Clocks","italic":false,"color":"red"}', \
    '{"text":"Requires 30 mana","italic":false,"color":"red"}', \
    '{"text":"Active Item","italic":false,"color":"green"}' \
  ] \
]
give @s minecraft:iron_pickaxe
give @s minecraft:nether_bricks 64
give @s minecraft:nether_bricks 64
give @s minecraft:blast_furnace 4
give @s minecraft:chest 2
give @s minecraft:oak_sign 3
give @s minecraft:gold_ore[ \
  minecraft:lore=[ \
    '{"text":"Give to the Blacksmith.","color":"blue"}', \
    '{"text":"Smelt to get Gold Ingots.","color":"blue"}', \
    '{"text":"Use Gold Ingots to craft Clocks.","color":"blue"}' \
  ] \
] 80
give @s minecraft:redstone_ore[ \
  minecraft:lore=[ \
    '{"text":"Mine to get Redstone Dust.","color":"blue"}' \
  ] \
] 5
give @s minecraft:coal[ \
  minecraft:lore=[ \
    '{"text":"Share with Baker and Alchemist.","color":"blue"}', \
    '{"text":"Use to fuel the Furnace.","color":"blue"}' \
  ] \
] 10
give @s minecraft:flint_and_steel
give @s minecraft:netherrack 1
give @s minecraft:cooked_porkchop 1
execute as @s at @s run function dvz:give/legendary_book

tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" You are a ","color":"yellow"}, \
  {"text":"Blacksmith","bold":true,"color":"blue"}, \
  {"text":". Your job is to make ","color":"yellow"}, \
  {"text":"Weapons","color":"gold"}, \
  {"text":" and\n   ","color":"yellow"}, \
  {"text":"Tools","color":"gold"}, \
  {"text":" for the dwarves.\n","color":"yellow"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" Begin by smelting ","color":"yellow"}, \
  {"text":"Gold","color":"gold"}, \
  {"text":", then combine it with ","color":"yellow"}, \
  {"text":"Redstone","color":"gold"}, \
  {"text":" to craft\n   ","color":"yellow"}, \
  {"text":"Clocks","color":"gold"}, \
  {"text":".\n","color":"yellow"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" You can get more ","color":"yellow"}, \
  {"text":"Gold Ore","color":"gold"}, \
  {"text":" from the ","color":"yellow"}, \
  {"text":"Tailor","color":"blue"}, \
  {"text":".","color":"yellow"} \
]

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

function dvz:dwarves/boss_message