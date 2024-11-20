# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: set_shrine_location
# Function Name: ogvz:admin/setup/set_shrine_location
# File Purpose: Sets the location the player is standing on as the shrine location.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.08
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

execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~ ~-1 ~ run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine","ogvz.kill_on_reload"]}

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
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-1 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-1 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-1 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}

# Place markers on gold blocks. [bottom layer]
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-2 ~1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~-2 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~-2 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0 ~-2 ~-2 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-2 ~-2 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-2 ~-2 ~-1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-2 ~-2 ~0 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}
execute at @s positioned ~0.5 ~ ~0.5 align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~-2 ~1 if block ~ ~ ~ minecraft:gold_block run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.shrine_block"]}

execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"gold"}, \
  {"selector":"@s"}, \
  {"text":" set a shrine location.","color":"yellow"} \
]