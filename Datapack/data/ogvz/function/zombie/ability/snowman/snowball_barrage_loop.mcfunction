# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: snowball_barage_loop
# Function Name: ogvz:zombie/ability/snowman/snowball_barage_loop
# File Purpose: A loop for snowman's snowball barrage.
# Created By: ropeFullOfHope
# 
# Created On: 2025.02.22
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Summon a snowball and give it a temporary tag.
execute summon minecraft:snowball run tag @s add temp.processing

# Teleport the snowball to the player's eyes and make it face in the same direction as the player
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:snowball,tag=temp.processing] ~ ~ ~ ~ -45

# Set the owner of the snowball to the player who shot it.
data modify entity @n[type=minecraft:snowball,tag=temp.processing] Owner set from entity @p UUID

# Create random deviation.
execute store result score @s temp.deviation.x run random value -150..150
execute store result score @s temp.deviation.y run random value -30..30
execute store result score @s temp.deviation.z run random value -150..150

# Add the vector values to the deviation scoreboard so a new scoreboard doesn't have to be created.
scoreboard players operation @s temp.deviation.x += @s temp.vector.x
scoreboard players operation @s temp.deviation.y += @s temp.vector.y
scoreboard players operation @s temp.deviation.z += @s temp.vector.z

# Copy the scoreboards into the motion vector of the snowball.
execute store result entity @n[type=minecraft:snowball,tag=temp.processing] Motion[0] double 0.0013 run scoreboard players get @s temp.deviation.x
execute store result entity @n[type=minecraft:snowball,tag=temp.processing] Motion[1] double 0.0013 run scoreboard players get @s temp.deviation.y
execute store result entity @n[type=minecraft:snowball,tag=temp.processing] Motion[2] double 0.0013 run scoreboard players get @s temp.deviation.z

# Remove the temporary tag from the snowball.
tag @n[type=minecraft:snowball,tag=temp.processing] remove temp.processing

# Repeat function untill all snowballs have been shot.
scoreboard players remove @s temp.snowball_amount 1
execute as @s[scores={temp.snowball_amount=1..}] at @s run function ogvz:zombie/ability/snowman/snowball_barrage_loop
