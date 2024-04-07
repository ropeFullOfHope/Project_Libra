# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: infest
# Function Name: dvz:zombies/silverfish/infest
# File Purpose: Shoots a ray that replaces dwarf blocks with infested stone.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.22
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute store result score @s DVZ.result.score run clear @s minecraft:heart_of_the_sea{CustomModelData:1000} 0

execute if entity @s[scores={DVZ.result.score=..0}] run title @s actionbar [ \
  "", \
  {"text":"[Infest]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"1 Silverfish Egg Cluster","bold":true,"color":"dark_red"}, \
  {"text":" to use this item!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.result.score=..0}] run return 0

# Summon 2 markers at players feet and gives them a tag.
execute summon minecraft:marker run tag @s add ray
execute summon minecraft:marker run tag @s add ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray_origin,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/silverfish/infest_loop

# Run infestation function if ray hit a dwarf block.
execute as @s at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] if block ~ ~ ~ #dvz:dwarf_blocks run function dvz:zombies/silverfish/infest_infestation

# If ray hit a non-dwarf block tell player they cannot infest it.
execute at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] unless block ~ ~ ~ #dvz:dwarf_blocks unless block ~ ~ ~ #dvz:go_through run title @s actionbar [ \
  "", \
  {"text":"[Infest]","bold":true,"color":"dark_red"}, \
  {"text":" You cannot infest that!","color":"dark_red"} \
]

# Get rid of the markers.
kill @e[type=minecraft:marker,tag=ray]
kill @e[type=minecraft:marker,tag=ray_origin]