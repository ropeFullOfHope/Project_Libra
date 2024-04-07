# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: shrouding_fog
# Function Name: dvz:zombies/phantom/shrouding_fog
# File Purpose: Throws a potion that creates a giant blindness inducing fog.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.18
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

title @s actionbar [ \
  "", \
  {"text":"[Shrouding Fog]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1

# Summon a vector head marker.
execute summon minecraft:marker run tag @s add head
# Teleport it to the player, so it gets the same rotation value.
tp @e[type=minecraft:marker,tag=head,limit=1] @s
# Teleport the marker forward.
execute as @e[type=minecraft:marker,tag=head,distance=..0.1,limit=1] at @s run tp @s ^ ^ ^1
# Prepare temporary scoreboards.
scoreboard objectives add DVZ.posX1.temp dummy
scoreboard objectives add DVZ.posY1.temp dummy
scoreboard objectives add DVZ.posZ1.temp dummy
scoreboard objectives add DVZ.posX2.temp dummy
scoreboard objectives add DVZ.posY2.temp dummy
scoreboard objectives add DVZ.posZ2.temp dummy
# Set scoreboards to the positions of the player and marker. (Do not change these numbers. Reducing these numbers also reduces accuarcy of rotation.)
execute store result score @s DVZ.posX1.temp run data get entity @s Pos[0] 1000
execute store result score @s DVZ.posY1.temp run data get entity @s Pos[1] 1000
execute store result score @s DVZ.posZ1.temp run data get entity @s Pos[2] 1000
execute store result score @s DVZ.posX2.temp run data get entity @e[type=minecraft:marker,tag=head,limit=1] Pos[0] 1000
execute store result score @s DVZ.posY2.temp run data get entity @e[type=minecraft:marker,tag=head,limit=1] Pos[1] 1000
execute store result score @s DVZ.posZ2.temp run data get entity @e[type=minecraft:marker,tag=head,limit=1] Pos[2] 1000
# The difference between 2 points in space creates a vector.
scoreboard players operation @s DVZ.posX2.temp -= @s DVZ.posX1.temp
scoreboard players operation @s DVZ.posY2.temp -= @s DVZ.posY1.temp
scoreboard players operation @s DVZ.posZ2.temp -= @s DVZ.posZ1.temp

# Summon a potion that displays as a smooth basalt.
summon minecraft:potion ~ ~ ~ {Tags:["processing"],Item:{id:"minecraft:smooth_basalt",Count:1b,tag:{CustomPotionColor:2039587}}}

# Set the owner of the potion to the player who threw it.
data modify entity @e[type=minecraft:potion,tag=processing,limit=1,sort=nearest] Owner set from entity @p UUID

# Teleport the potion to the player's eyes and make it look in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:potion,tag=processing,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Create a marker positioned directly on the potion.
execute at @e[type=minecraft:potion,tag=processing,limit=1,sort=nearest] summon minecraft:marker run tag @s add fognade

# Replaces the motion values with the vectors. (Modify these values to change the strength of throw)
execute store result entity @e[type=minecraft:potion,tag=processing,limit=1,sort=nearest] Motion[0] double 0.0005 run scoreboard players get @s DVZ.posX2.temp
execute store result entity @e[type=minecraft:potion,tag=processing,limit=1,sort=nearest] Motion[1] double 0.0005 run scoreboard players get @s DVZ.posY2.temp
execute store result entity @e[type=minecraft:potion,tag=processing,limit=1,sort=nearest] Motion[2] double 0.0005 run scoreboard players get @s DVZ.posZ2.temp

# Remove processing tag and add a new tag on the potion.
tag @e[type=minecraft:potion,tag=processing,limit=1,sort=nearest] add fognade
tag @e[type=minecraft:potion,tag=processing,limit=1,sort=nearest] add air_toggle
tag @e[type=minecraft:potion,tag=processing,limit=1,sort=nearest] remove processing

# Kills the vector head marker.
kill @e[type=minecraft:marker,tag=head]

# Get rid of temporary scoreboards.
scoreboard objectives remove DVZ.posX1.temp
scoreboard objectives remove DVZ.posY1.temp
scoreboard objectives remove DVZ.posZ1.temp
scoreboard objectives remove DVZ.posX2.temp
scoreboard objectives remove DVZ.posY2.temp
scoreboard objectives remove DVZ.posZ2.temp

clear @s minecraft:carrot_on_a_stick{CustomModelData:7091} 1