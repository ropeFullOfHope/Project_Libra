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

execute unless entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] run return 0

kill @e[type=minecraft:block_display,tag=shrine_indicator]
kill @e[type=minecraft:marker,tag=shrine]
kill @e[type=minecraft:marker,tag=shrine_block]

forceload add ~ ~ ~ ~

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
  {"text":" set a shrine location.","color":"yellow"} \
]