# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: set_lobby_location
# Function Name: dvz:admin/setup/set_lobby_location
# File Purpose: Sets the location the player is standing on as the spawn lobby location.
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

execute unless entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] run return 0

kill @e[type=minecraft:block_display,tag=lobby_indicator]
kill @e[type=minecraft:marker,tag=lobby]

forceload add ~ ~ ~ ~

execute at @s align xyz positioned ~0.5 ~ ~0.5 summon minecraft:marker run tag @s add lobby

execute at @s align xyz positioned ~0.25 ~0.25 ~0.25 run summon minecraft:block_display ~ ~ ~ { \
  Tags:["lobby_indicator"], \
  brightness:{sky:15,block:15}, \
  transformation:{ \
    left_rotation:[0f,0f,0f,1f], \
    right_rotation:[0f,0f,0f,1f], \
    translation:[0f,0f,0f], \
    scale:[0.5f,0.5f,0.5f] \
  }, \
  block_state:{Name:"minecraft:sea_lantern"} \
}

# Set the lobby as the world spawn.
execute if entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] at @s align xyz positioned ~0.5 ~ ~0.5 run setworldspawn ~ ~ ~

# Teleport all non-admin players to the lobby, but only if it's setup phase.
execute if entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @a[tag=!admin] ~ ~ ~

execute as @a[tag=admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"dark_green"}, \
  {"selector":"@s"}, \
  {"text":" set a lobby location.","color":"green"} \
]