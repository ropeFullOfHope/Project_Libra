# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: set_boss_location
# Function Name: dvz:admin/setup/set_boss_location
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

execute unless entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] run return 0

kill @e[type=minecraft:item_display,tag=boss_spawn_indicator]
kill @e[type=minecraft:marker,tag=boss_spawn]

forceload add ~ ~ ~ ~

execute at @s align xyz positioned ~0.5 ~ ~0.5 summon minecraft:marker run tag @s add boss_spawn

execute at @s align xyz positioned ~0.5 ~0.75 ~0.5 run summon minecraft:item_display ~ ~ ~ { \
  Tags:["boss_spawn_indicator"], \
  brightness:{sky:15,block:15}, \
  transformation:{ \
    left_rotation:[0f,0f,0f,1f], \
    right_rotation:[0f,0f,0f,1f], \
    translation:[0f,0f,0f], \
    scale:[1f,1f,1f] \
  }, \
  item:{id:"minecraft:skeleton_skull",Count:1b} \
}

execute as @a[tag=admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

tellraw @a [ \
  "", \
  {"text":"SETUP: ","bold":true,"color":"dark_purple"}, \
  {"selector":"@s"}, \
  {"text":" set a boss spawn location.","color":"light_purple"} \
]