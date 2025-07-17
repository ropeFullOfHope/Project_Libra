# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: water_wand
# Function Name: ogvz:dwarf/water_wand
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

title @s actionbar [ \
  "", \
  {"text":"[Water Wand]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:item.bucket.empty player @a ~ ~ ~ 1 1

# Summon 2 markers at players feet and gives them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=temp.ray_origin,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] at @s run function ogvz:dwarf/item/water_wand_loop

# Replace a Cauldron with a fully filled Water Cauldron.
execute as @s at @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] if block ~ ~ ~ minecraft:cauldron run setblock ~ ~ ~ minecraft:water_cauldron[level=3] replace
execute as @s at @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] if block ~ ~ ~ minecraft:water_cauldron run setblock ~ ~ ~ minecraft:water_cauldron[level=3] replace

# Play a sound at the Cauldron.
execute as @s at @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] if block ~ ~ ~ minecraft:water_cauldron run playsound minecraft:item.bucket.fill block @a ~ ~ ~ 1 1

# Get rid of the markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]