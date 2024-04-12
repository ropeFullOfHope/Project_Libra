# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: place_shrine_platform
# Function Name: ogvz:admin/setup/place_shrine_platform
# File Purpose: Places a platform shrine.
# Created By: ropeFullOfHope
# 
# Created On: 2023.11.04
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] run return 0

kill @e[type=minecraft:block_display,tag=shrine_indicator]
kill @e[type=minecraft:marker,tag=shrine]
kill @e[type=minecraft:marker,tag=shrine_block]

forceload add ~ ~ ~ ~

tp @s ~ ~4 ~

execute at @s positioned ~0.5 ~ ~0.5 align xyz run place template ogvz:shrine/platform ~-12 ~-5 ~-12
execute if entity @s[predicate=ogvz:is_in_overworld_dimension] at @s positioned ~0.5 ~ ~0.5 align xyz run fill ~-1 ~-2 ~-1 ~0 -63 ~0 minecraft:obsidian
execute if entity @s[predicate=ogvz:is_in_nether_dimension] at @s positioned ~0.5 ~ ~0.5 align xyz run fill ~-1 ~-2 ~-1 ~0 1 ~0 minecraft:obsidian
execute if entity @s[predicate=ogvz:is_in_end_dimension] at @s positioned ~0.5 ~ ~0.5 align xyz run fill ~-1 ~-2 ~-1 ~0 0 ~0 minecraft:obsidian

execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~ ~1 ~ summon minecraft:marker run tag @s add shrine

execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~-0.25 ~0.25 ~-0.25 run summon minecraft:block_display ~ ~ ~ { \
  Tags:["shrine_indicator"], \
  brightness:{sky:15,block:15}, \
  transformation:{ \
    left_rotation:[0f,0f,0f,1f], \
    right_rotation:[0f,0f,0f,1f], \
    translation:[0f,0f,0f], \
    scale:[0.5f,0.5f,0.5f] \
  }, \
  block_state:{Name:"minecraft:gold_block"} \
}

execute as @a[tag=admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"gold"}, \
  {"selector":"@s"}, \
  {"text":" placed a standard shrine.","color":"yellow"} \
]