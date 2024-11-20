# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: place_zombie_spawn_standard
# Function Name: ogvz:admin/setup/place_zombie_spawn_standard
# File Purpose: Places a standard zombie spawn.
# Created By: ropeFullOfHope
# 
# Created On: 2023.11.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

kill @e[type=minecraft:block_display,tag=ogvz.block_display.zombie_spawn]
kill @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn]

forceload add ~ ~

tp @s ~ ~6 ~

execute at @s run place template ogvz:zombie_spawn/standard ~-4 ~-1 ~-4

execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.zombie_spawn","ogvz.kill_on_reload"]}

execute at @s align xyz positioned ~0.25 ~0.25 ~0.25 run summon minecraft:block_display ~ ~ ~ { \
  Tags:["ogvz.block_display","ogvz.block_display.zombie_spawn","ogvz.kill_on_reload"], \
  brightness:{sky:15,block:15}, \
  transformation:{ \
    left_rotation:[0f,0f,0f,1f], \
    right_rotation:[0f,0f,0f,1f], \
    translation:[0f,0f,0f], \
    scale:[0.5f,0.5f,0.5f] \
  }, \
  block_state:{Name:"minecraft:crying_obsidian"} \
}

execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"dark_red"}, \
  {"selector":"@s"}, \
  {"text":" placed a standard zombie spawn.","color":"red"} \
]