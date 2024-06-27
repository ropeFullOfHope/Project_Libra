# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: fertilizer
# Function Name: ogvz:dwarves/fertilizer
# File Purpose: Shoots a ray that replaces the biome around a grass block.
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

# Summon 2 markers at players feet and gives them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=temp.ray_origin,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] at @s run function ogvz:dwarves/item/fertilizer_loop

# Replace biome if the block targeted is a Grass Block.
execute as @s at @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] if block ~ ~ ~ minecraft:grass_block run fillbiome ~-5 ~-3 ~-5 ~5 ~3 ~5 minecraft:plains

# Play a sound at the Grass Block.
execute as @s at @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] if block ~ ~ ~ minecraft:grass_block run playsound minecraft:block.composter.fill_success block @a ~ ~ ~ 1 1

# Remove the Fertilizer if it has been used.
execute as @s at @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] if block ~ ~ ~ minecraft:grass_block run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=3106] 1

# Get rid of the markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]