# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: set_boss_location
# Function Name: ogvz:admin/setup/set_boss_location
# File Purpose: Sets the location the player is standing on as the boss spawn location.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.10
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Return if game isn't in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

kill @e[type=minecraft:block_display,tag=ogvz.block_display.boss_spawn]
kill @e[type=minecraft:marker,tag=ogvz.marker.boss_spawn]

forceload add ~ ~

execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker","ogvz.marker.boss_spawn","ogvz.kill_on_reload"]}

execute at @s align xyz positioned ~0.25 ~0.25 ~0.25 run summon minecraft:block_display ~ ~ ~ { \
  Tags:["ogvz.block_display","ogvz.block_display.boss_spawn","ogvz.kill_on_reload"], \
  brightness:{sky:15,block:15}, \
  transformation:{ \
    left_rotation:[0f,0f,0f,1f], \
    right_rotation:[0f,0f,0f,1f], \
    translation:[0f,0f,0f], \
    scale:[0.5f,0.5f,0.5f] \
  }, \
  block_state:{ \
    Name:"minecraft:end_portal_frame", \
    Properties:{eye:"true"} \
  } \
}

execute as @a[tag=ogvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"dark_purple"}, \
  {"selector":"@s"}, \
  {"text":" set a boss spawn location.","color":"light_purple"} \
]