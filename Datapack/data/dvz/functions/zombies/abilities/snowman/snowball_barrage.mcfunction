# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: snowball_barrage
# Function Name: dvz:zombies/snowman/snowball_barrage
# File Purpose: Creates a group of snowballs and lobs them forward.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.snowball_barrage.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Snowball Barrage]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.snowball_barrage.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.snowball_barrage.cool=1..}] run return 0

scoreboard players set @s DVZ.snowball_barrage.cool 8

title @s actionbar [ \
  "", \
  {"text":"[Snowball Barrage]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 1

# Summon a vector head marker.
execute summon minecraft:marker run tag @s add head
# Teleport it to the player, so it gets the same rotation value.
tp @e[type=minecraft:marker,tag=head,limit=1] @s
# Clear the pitch rotation value.
data modify entity @e[type=minecraft:marker,tag=head,limit=1] Rotation[1] set value 0.0f
# Teleport the marker forward.
execute as @e[type=minecraft:marker,tag=head,distance=..0.1,limit=1] at @s run tp @s ^ ^ ^1
# Prepare temporary scoreboards.
scoreboard objectives add DVZ.posX1.temp dummy
scoreboard objectives add DVZ.posZ1.temp dummy
scoreboard objectives add DVZ.posX2.temp dummy
scoreboard objectives add DVZ.posZ2.temp dummy
scoreboard objectives add DVZ.posY.temp dummy
scoreboard objectives add DVZ.deviationX.temp dummy
scoreboard objectives add DVZ.deviationY.temp dummy
scoreboard objectives add DVZ.deviationZ.temp dummy
scoreboard objectives add DVZ.snowballs.temp dummy
# Set scoreboards to the positions of the player and marker. (Do not change these numbers if you want to change the arc. Reducing these numbers also reduces accuarcy of rotation.)
execute store result score @s DVZ.posX1.temp run data get entity @s Pos[0] 1000
execute store result score @s DVZ.posZ1.temp run data get entity @s Pos[2] 1000
execute store result score @s DVZ.posX2.temp run data get entity @e[type=minecraft:marker,tag=head,limit=1] Pos[0] 1000
execute store result score @s DVZ.posZ2.temp run data get entity @e[type=minecraft:marker,tag=head,limit=1] Pos[2] 1000
# The difference between 2 points in space creates a vector.
scoreboard players operation @s DVZ.posX2.temp -= @s DVZ.posX1.temp
scoreboard players operation @s DVZ.posZ2.temp -= @s DVZ.posZ1.temp
# The vertical vector is always at max value.
scoreboard players set @s DVZ.posY.temp 1000

# Set the amount of snowballs to be launched
scoreboard players set @s DVZ.snowballs.temp 50

# Executes a loop depending on if the player is sprinting or sneaking.
execute as @s[predicate=!dvz:is_sprinting,predicate=!dvz:is_sneaking] at @s run function dvz:zombies/snowman/snowball_barrage_loop_stand
execute as @s[predicate=dvz:is_sprinting,predicate=!dvz:is_sneaking] at @s run function dvz:zombies/snowman/snowball_barrage_loop_sprint
execute as @s[predicate=dvz:is_sneaking] at @s run function dvz:zombies/snowman/snowball_barrage_loop_sneak

# Kills the vector head marker.
kill @e[type=minecraft:marker,tag=head]

# Get rid of temporary scoreboards.
scoreboard objectives remove DVZ.posX1.temp
scoreboard objectives remove DVZ.posZ1.temp
scoreboard objectives remove DVZ.posX2.temp
scoreboard objectives remove DVZ.posZ2.temp
scoreboard objectives remove DVZ.posY.temp
scoreboard objectives remove DVZ.deviationX.temp
scoreboard objectives remove DVZ.deviationY.temp
scoreboard objectives remove DVZ.deviationZ.temp
scoreboard objectives remove DVZ.snowballs.temp