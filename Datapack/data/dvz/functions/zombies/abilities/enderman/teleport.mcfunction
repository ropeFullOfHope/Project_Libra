# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: teleport
# Function Name: dvz:zombies/enderman/teleport
# File Purpose: Shoots a ray that looks for a block to teleport the player to.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.29
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.teleport.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Teleport]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.teleport.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.teleport.cool=1..}] run return 0

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp_ray_origin

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add ray

# Teleports the marker to the player's eyes and makes it face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/enderman/teleport_loop

# If ray didn't hit any blocks tell the player the location they are looking at is too far.
execute unless entity @e[type=minecraft:marker,tag=ray,distance=..32] run title @s actionbar [ \
  "", \
  {"text":"[Teleport]","bold":true,"color":"dark_red"}, \
  {"text":" Cannot teleport that far!","color":"dark_red"} \
]

# Check if player can teleport to the location the player is looking at.
execute if entity @e[type=minecraft:marker,tag=ray,distance=..32] as @s at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] run function dvz:zombies/enderman/teleport_teleport

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=ray]

# Remove tags
tag @s remove temp_ray_origin