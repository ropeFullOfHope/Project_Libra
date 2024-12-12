# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:load
# File Name: setup
# Function Name: ogvz:load/setup
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
tag @a remove ogvz.ready
time set 1200t

# Reset tags and scoreboards.
execute as @a at @s run function ogvz:misc/remove_tags
execute as @a at @s run function ogvz:misc/clear_scoreboards
execute as @a at @s run function ogvz:misc/remove_attributes

# Kill AI bosses.
#kill @e[type=minecraft:ender_dragon,tag=ogvz.class.boss]
#kill @e[type=minecraft:wither,tag=ogvz.class.boss]

# Kill all OGvZ markers/block displays/item displays/armor stands.
#kill @e[type=minecraft:marker,tag=ogvz.marker]
#kill @e[type=minecraft:block_display,tag=ogvz.block_display]
#kill @e[type=minecraft:item_display,tag=ogvz.item_display]
#kill @e[type=minecraft:text_display,tag=ogvz.text_display]
#kill @e[type=minecraft:armor_stand,tag=ogvz.armor_stand]

# Kill all kill on reload tagged entities.
kill @e[tag=ogvz.kill_on_reload]

# Forceload 0 0 0.
execute in minecraft:overworld run forceload add 0 0
