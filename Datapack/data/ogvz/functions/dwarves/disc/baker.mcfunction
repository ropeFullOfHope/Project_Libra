# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: baker
# Function Name: ogvz:dwarves/disk/baker
# File Purpose: Spawn items for the baker dwarf class.
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

tag @s add baker
tag @s add selected_class
tag @s add mana
tag @s add mana_regen

team join d3BAKER @s

# Gives baker all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_model_data=3003, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:item_name='{"text":"Summoning Book","color":"green"}', \
  minecraft:lore=[ \
    '{"text":"Conjures food.","color":"blue"}', \
    '{"text":"Requires 10 Bricks","italic":false,"color":"red"}', \
    '{"text":"Requires 30 mana","italic":false,"color":"red"}', \
    '{"text":"Active Item","italic":false,"color":"green"}' \
  ] \
]
give @s minecraft:bricks 64
give @s minecraft:bricks 64
give @s minecraft:furnace 4
give @s minecraft:chest 2
give @s minecraft:oak_sign 3
give @s minecraft:clay_ball[ \
  minecraft:lore=[ \
    '{"text":"Smelt to get Bricks.","color":"blue"}' \
  ] \
] 40
give @s minecraft:coal[ \
  minecraft:lore=[ \
    '{"text":"Share with Baker and Alchemist.","color":"blue"}', \
    '{"text":"Use to fuel the Furnace.","color":"blue"}' \
  ] \
] 5
give @s minecraft:cooked_porkchop 1
execute as @s at @s run function ogvz:give/legendary_book

tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" You are a ","color":"yellow"}, \
  {"text":"Baker","bold":true,"color":"blue"}, \
  {"text":". You make ","color":"yellow"}, \
  {"text":"Food","color":"gold"}, \
  {"text":" for the dwarves.\n","color":"yellow"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" Begin by smelting ","color":"yellow"}, \
  {"text":"Clay Balls","color":"gold"}, \
  {"text":" into ","color":"yellow"}, \
  {"text":"Bricks","color":"gold"}, \
  {"text":".\n","color":"yellow"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" You can get more ","color":"yellow"}, \
  {"text":"Coal","color":"gold"}, \
  {"text":" from the ","color":"yellow"}, \
  {"text":"Blacksmith","color":"blue"}, \
  {"text":".","color":"yellow"} \
]

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

function ogvz:dwarves/boss_message