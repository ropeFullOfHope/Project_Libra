# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: icicle
# Function Name: dvz:zombies/snowman/icicle
# File Purpose: Casts a ray that freezes the targeted player.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.icicle.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Icicle]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.icicle.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.icicle.cool=1..}] run return 0

scoreboard players set @s DVZ.icicle.cool 30

title @s actionbar [ \
  "", \
  {"text":"[Icicle]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 1

playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp_ray_origin

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add ray

# Teleports the marker to the player's eyes and makes it face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/snowman/icicle_loop_1

# Summon an armor stand and freeze the player.
execute as @a[tag=temp_hit,tag=!ice_type] at @s align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Small:1b,Tags:[freeze_anchor]}
scoreboard players set @a[tag=temp_hit,tag=!ice_type] DVZ.freeze.tick 120
effect give @a[tag=temp_hit,tag=!ice_type] minecraft:slowness 6 127

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=ray]

# Remove tags.
tag @s remove temp_ray_origin
tag @a remove temp_hit
tag @a remove temp_big_hitbox
tag @a remove temp_medium_hitbox
tag @a remove temp_small_hitbox