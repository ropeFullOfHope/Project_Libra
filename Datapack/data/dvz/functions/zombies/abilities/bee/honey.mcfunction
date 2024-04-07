# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: honey
# Function Name: dvz:zombies/bee/honey
# File Purpose: Shoots a ray that overheals players.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.10
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.honey.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Honey]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.honey.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.honey.cool=1..}] run return 0

scoreboard players set @s DVZ.honey.cool 10

title @s actionbar [ \
  "", \
  {"text":"[Honey]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.bee.hurt player @a ~ ~ ~ 1 0.8

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp_ray_origin

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add ray

# Teleports the marker to the player's eyes and makes it face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/bee/honey_loop

# Create particles around the ray.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run particle minecraft:heart ~ ~ ~ 1.5 0 1.5 0 50 force

# Overheal everybody near the ray.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run effect clear @a[tag=zombies,distance=..4] minecraft:absorption
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run effect give @a[tag=zombies,distance=..4] minecraft:absorption 30 2
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run effect give @a[tag=zombies,distance=..4] minecraft:instant_health 1 2 true

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=ray]

# Remove tags
tag @s remove temp_ray_origin
tag @a remove temp_hit
tag @a remove temp_big_hitbox
tag @a remove temp_medium_hitbox
tag @a remove temp_small_hitbox