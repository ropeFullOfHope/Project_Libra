# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/snowman/snowball_barrage
# File Name: snowball_barrage_loop_sneak
# Function Name: dvz:zombies/snowman/snowball_barrage_loop_sneak
# File Purpose: A loop to create multiple snowballs with slight deviations.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.29
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Summon a snowball with a tag.
execute summon minecraft:snowball run tag @s add processing

# Set the owner of the snowball to the player who threw it.
data modify entity @e[type=minecraft:snowball,tag=processing,limit=1,sort=nearest] Owner set from entity @p UUID

# Use a random value for deviation.
execute store result score @s DVZ.deviationX.temp run random value -150..150
execute store result score @s DVZ.deviationY.temp run random value -75..75
execute store result score @s DVZ.deviationZ.temp run random value -150..150

# Add the motion vectors to the deviation scoreboard so a new scoreboard doesn't have to be created.
scoreboard players operation @s DVZ.deviationX.temp += @s DVZ.posX2.temp
scoreboard players operation @s DVZ.deviationY.temp += @s DVZ.posY.temp
scoreboard players operation @s DVZ.deviationZ.temp += @s DVZ.posZ2.temp

# Replaces the motion values with the vectors. (Modify these values to change the arc)
execute store result entity @e[type=minecraft:snowball,tag=processing,limit=1,distance=..0.1,sort=nearest] Motion[0] double 0.0006 run scoreboard players get @s DVZ.deviationX.temp
execute store result entity @e[type=minecraft:snowball,tag=processing,limit=1,distance=..0.1,sort=nearest] Motion[1] double 0.0006 run scoreboard players get @s DVZ.deviationY.temp
execute store result entity @e[type=minecraft:snowball,tag=processing,limit=1,distance=..0.1,sort=nearest] Motion[2] double 0.0006 run scoreboard players get @s DVZ.deviationZ.temp
# Teleports the snowball to your eyes.
execute anchored eyes positioned ^ ^ ^ as @e[type=minecraft:snowball,tag=processing,limit=1,distance=..0.1,sort=nearest] run tp @s ~ ~ ~
execute as @e[type=minecraft:snowball,tag=processing,limit=1,sort=nearest] run tag @s add damaging
execute as @e[type=minecraft:snowball,tag=processing,limit=1,sort=nearest] run tag @s add air_toggle
execute as @e[type=minecraft:snowball,tag=processing,limit=1,sort=nearest] run tag @s remove processing

# Repeat function untill all snowballs have been shot.
scoreboard players remove @s DVZ.snowballs.temp 1
execute if entity @s[scores={DVZ.snowballs.temp=1..}] run function dvz:zombies/snowman/snowball_barrage_loop_sneak