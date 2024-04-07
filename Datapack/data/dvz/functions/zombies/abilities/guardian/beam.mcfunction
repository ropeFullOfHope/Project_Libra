# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: beam
# Function Name: dvz:zombies/guardian/beam
# File Purpose: Shoots a beam that deals magic damage.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.beam.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Beam]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.beam.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.beam.cool=1..}] run return 0

scoreboard players set @s DVZ.beam.cool 5

title @s actionbar [ \
  "", \
  {"text":"[Beam]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp_ray_origin

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add ray

# Teleports the marker to the player's eyes and makes it face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/guardian/beam_loop

# Deals damage to all players who have been hit by the ray.
execute as @a[tag=temp_hit] run damage @s 12 minecraft:magic by @p[tag=temp_ray_origin]

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=ray]

# Remove tags
tag @s remove temp_ray_origin
tag @a remove temp_hit
tag @a remove temp_big_hitbox
tag @a remove temp_medium_hitbox
tag @a remove temp_small_hitbox