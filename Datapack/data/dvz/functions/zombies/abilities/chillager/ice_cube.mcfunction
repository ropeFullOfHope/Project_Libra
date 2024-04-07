# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_ability
# File Name: ice_cube
# Function Name: dvz:zombies/chillager/ice_cube
# File Purpose: Creates an Ice bridge.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.08
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.ice_cube.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Ice Cube]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.ice_cube.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.ice_cube.cool=1..}] run return 0

scoreboard players set @s DVZ.ice_cube.cool 15

title @s actionbar [ \
  "", \
  {"text":"[Ice Cube]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp_ray_origin

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add ray

# Makes the marker rotated in the same direction as the player and teleports it up a little.
execute positioned ~ ~0.5 ~ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ 0

# Teleports the marker slightly forward.
execute as @e[type=minecraft:marker,limit=1,sort=nearest] at @s run tp @s ^ ^ ^1.5

# Makes the marker face the same direction as the player.
execute at @e[type=minecraft:marker,limit=1,sort=nearest] rotated as @s run tp @e[type=minecraft:marker,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/chillager/ice_cube_loop

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=ray]

# Remove tags
tag @s remove temp_ray_origin

clear @s minecraft:carrot_on_a_stick{CustomModelData:7071} 1