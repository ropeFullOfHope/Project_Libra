# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: water_wand
# Function Name: dvz:dwarves/water_wand
# File Purpose: Shoots a ray that replaces cauldrons with fully filled cauldrons.
# Created By: ropeFullOfHope
# 
# Created On: 2024.01.04
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={ogvz.alchemist.water_wand.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Water Wand]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"ogvz.alchemist.water_wand.cooldown.seconds"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={ogvz.alchemist.water_wand.cooldown.seconds=1..}] run return 0

# Summon 2 markers at players feet and gives them a tag.
execute summon minecraft:marker run tag @s add ray
execute summon minecraft:marker run tag @s add ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray_origin,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:dwarves/water_wand_loop

# Replace a Cauldron with a fully filled Water Cauldron.
execute as @s at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ minecraft:cauldron run setblock ~ ~ ~ minecraft:water_cauldron[level=3] replace
execute as @s at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ minecraft:water_cauldron run setblock ~ ~ ~ minecraft:water_cauldron[level=3] replace

execute as @s at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ minecraft:water_cauldron run title @s actionbar [ \
  "", \
  {"text":"[Water Wand]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

# Play a sound at the Cauldron.
execute as @s at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ minecraft:water_cauldron run playsound minecraft:item.bucket.empty block @a ~ ~ ~ 1 1

# Set a cooldown if a Cauldron was filled.
execute as @s at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ minecraft:water_cauldron run scoreboard players set @s ogvz.alchemist.water_wand.cooldown.seconds 5

# Get rid of the markers.
kill @e[type=minecraft:marker,tag=ray]
kill @e[type=minecraft:marker,tag=ray_origin]