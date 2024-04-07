# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: fissure
# Function Name: dvz:zombies/golem/fissure
# File Purpose: Raises ground to form a wall.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.25
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.fissure.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Fissure]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.fissure.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.fissure.cool=1..}] run return 0

scoreboard players set @s DVZ.fissure.cool 5

title @s actionbar [ \
  "", \
  {"text":"[Fissure]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:block.chain.break player @a ~ ~ ~ 10 0.25
playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 10 0.25

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp_ray_origin

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add ray

# Makes the marker rotated in the same direction as the player and teleports it up a little.
execute positioned ~ ~0.5 ~ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ 0

# Teleports the marker slightly forward.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run tp @s ^ ^ ^1.5

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/golem/fissure_loop

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=ray]
kill @e[type=minecraft:marker,tag=processed]

# Remove tags
tag @s remove temp_ray_origin