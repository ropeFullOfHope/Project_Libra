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
tag @s add ogvz.dwarf.job
tag @s add ogvz.dwarf.job.builder
tag @s add ogvz.dwarf.selected_class
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
item replace entity @s weapon.offhand with minecraft:wooden_sword[ \
  minecraft:custom_model_data=1000, \
  minecraft:unbreakable={show_in_tooltip:false}, \
  minecraft:attribute_modifiers={ \
    modifiers:[ \
      {type:"minecraft:player.block_interaction_range",name:"minecraft:player.block_interaction_range",amount:2,operation:"add_value",slot:"mainhand",uuid:[I;1,1,1,1]}, \
      {type:"minecraft:player.block_interaction_range",name:"minecraft:player.block_interaction_range",amount:2,operation:"add_value",slot:"offhand",uuid:[I;2,2,2,2]}, \
      {type:"minecraft:generic.attack_damage",name:"minecraft:generic.attack_damage",amount:0,operation:"add_value",slot:"mainhand",uuid:[I;1,1,1,1]}, \
      {type:"minecraft:generic.attack_speed",name:"minecraft:generic.attack_speed",amount:0,operation:"add_value",slot:"mainhand",uuid:[I;1,1,1,1]} \
    ], \
    show_in_tooltip:false \
  }, \
  minecraft:item_name='{"text":"Crab Claw"}', \
  minecraft:lore=[ \
    '{"text":" "}', \
    '{"text":"When in Hand:","italic":false,"color":"gray"}', \
    '{"text":"+2 Block Reach","italic":false,"color":"blue"}' \
  ] \
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
give @s minecraft:cooked_porkchop 1
give @s minecraft:iron_pickaxe[ \
  minecraft:item_name='{"text":"Builder Pickaxe","color":"green"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:efficiency":4, \
      "minecraft:unbreaking":2 \
    } \
  } \
]
give @s minecraft:iron_shovel[ \
  minecraft:item_name='{"text":"Builder Shovel","color":"green"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:efficiency":4, \
      "minecraft:unbreaking":2 \
    } \
  } \
]
give @s minecraft:iron_axe[ \
  minecraft:item_name='{"text":"Builder Axe","color":"green"}', \
  minecraft:enchantments={ \
    levels:{ \
      "minecraft:efficiency":4, \
      "minecraft:unbreaking":2, \
      "minecraft:silk_touch":1 \
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