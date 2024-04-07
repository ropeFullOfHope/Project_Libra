# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:load
# File Name: setup
# Function Name: dvz:load/setup
# File Purpose: General initializations.
# Created By: ropeFullOfHope
# 
# Created On: 2023.06.30
# Last Modified On: 
# Last Modified By: 
#
# Credit to: 
#
# Comments: 
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# General setup.
difficulty hard
tag @a remove DVZ_ready
time set 1200t

# Kill AI bosses.
kill @e[type=minecraft:ender_dragon,tag=boss]
kill @e[type=minecraft:wither,tag=boss]

# Kill all OGvZ markers/block displays/item displays/armor stands.
kill @e[type=minecraft:marker,tag=dvz]
kill @e[type=minecraft:block_display,tag=dvz]
kill @e[type=minecraft:item_display,tag=dvz]
kill @e[type=minecraft:armor_stand,tag=dvz]
#kill @e[type=minecraft:marker,tag=lobby]
#kill @e[type=minecraft:marker,tag=shrine]
#kill @e[type=minecraft:marker,tag=zombie_spawn]
#kill @e[type=minecraft:marker,tag=boss_spawn]
#kill @e[type=minecraft:block_display,tag=lobby_indicator]
#kill @e[type=minecraft:block_display,tag=shrine_indicator]
#kill @e[type=minecraft:item_display,tag=zombie_spawn_indicator]
#kill @e[type=minecraft:item_display,tag=boss_spawn_indicator]
#kill @e[type=minecraft:marker,tag=shrine_block]
#kill @e[type=minecraft:marker,tag=infestation]
#kill @e[type=minecraft:marker,tag=portal]
#kill @e[type=minecraft:armor_stand,tag=freeze_anchor]

# Create game phase marker.
#execute in minecraft:overworld run forceload add 0 0
#execute in minecraft:overworld positioned 0 0 0 run summon minecraft:marker ~ ~ ~ {Tags:["dvz","setup_phase"]}