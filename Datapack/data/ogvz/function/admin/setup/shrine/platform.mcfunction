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

# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

kill @e[type=minecraft:block_display,tag=ogvz.block_display.shrine]
kill @e[type=minecraft:marker,tag=ogvz.marker.shrine]
kill @e[type=minecraft:marker,tag=ogvz.marker.shrine_block]

forceload add ~ ~

tp @s ~ ~4 ~

execute at @s positioned ~0.5 ~ ~0.5 align xyz run place template ogvz:shrine/platform ~-12 ~-5 ~-12
execute if entity @s[predicate=ogvz:is_in_overworld_dimension] at @s positioned ~0.5 ~ ~0.5 align xyz run fill ~-1 ~-2 ~-1 ~0 -63 ~0 minecraft:obsidian
execute if entity @s[predicate=ogvz:is_in_nether_dimension] at @s positioned ~0.5 ~ ~0.5 align xyz run fill ~-1 ~-2 ~-1 ~0 1 ~0 minecraft:obsidian
execute if entity @s[predicate=ogvz:is_in_end_dimension] at @s positioned ~0.5 ~ ~0.5 align xyz run fill ~-1 ~-2 ~-1 ~0 0 ~0 minecraft:obsidian

execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~ ~-1 ~ run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine","ogvz.kill_on_reload"]}

execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~-0.25 ~0.25 ~-0.25 run summon minecraft:block_display ~ ~ ~ { \
  Tags:["ogvz.block_display","ogvz.block_display.shrine","ogvz.kill_on_reload"], \
  brightness:{sky:15,block:15}, \
  transformation:{ \
    left_rotation:[0f,0f,0f,1f], \
    right_rotation:[0f,0f,0f,1f], \
    translation:[0f,0f,0f], \
    scale:[0.5f,0.5f,0.5f] \
  }, \
  block_state:{Name:"minecraft:gold_block"} \
}

# Place markers on gold blocks. [top layer]
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-1 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-1 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-1 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}

# Place markers on gold blocks. [bottom layer]
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-2 ~1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~-2 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~-2 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-2 ~-2 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-2 ~-2 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-2 ~-2 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-2 ~-2 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-2 ~1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.shrine_block","ogvz.kill_on_reload"]}

execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"gold"}, \
  {"selector":"@s"}, \
  {"text":" placed a standard shrine.","color":"yellow"} \
]