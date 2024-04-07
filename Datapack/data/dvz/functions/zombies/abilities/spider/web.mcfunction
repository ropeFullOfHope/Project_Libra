# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: web
# Function Name: dvz:zombies/spider/web
# File Purpose: Shoots a cube of Cobwebs that can trap dwarves.
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

execute if entity @s[scores={DVZ.web.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Web]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.web.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.web.cool=1..}] run return 0

scoreboard players set @s DVZ.web.cool 15

title @s actionbar [ \
  "", \
  {"text":"[Web]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.spider.ambient player @a ~ ~ ~ 1 0.7

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp_ray_origin

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add ray

# Teleports the marker to the player's eyes and makes it face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/spider/web_loop

# Create a Cobweb cube at the positioned of the hit player, or at the position of the ray if no player was hit.
# L1   L2   L3
# X X   X   X X
#  X   XXX   X 
# X X   X   X X
execute if entity @p[tag=temp_hit] at @p[tag=temp_hit] run fill ~ ~ ~ ~ ~2 ~ minecraft:cobweb replace #dvz:go_through
execute if entity @p[tag=temp_hit] at @p[tag=temp_hit] run fill ~-1 ~1 ~ ~1 ~1 ~ minecraft:cobweb replace #dvz:go_through
execute if entity @p[tag=temp_hit] at @p[tag=temp_hit] run fill ~ ~1 ~-1 ~ ~1 ~1 minecraft:cobweb replace #dvz:go_through
execute if entity @p[tag=temp_hit] at @p[tag=temp_hit] run fill ~1 ~ ~1 ~1 ~ ~1 minecraft:cobweb replace #dvz:go_through
execute if entity @p[tag=temp_hit] at @p[tag=temp_hit] run fill ~1 ~ ~-1 ~1 ~ ~-1 minecraft:cobweb replace #dvz:go_through
execute if entity @p[tag=temp_hit] at @p[tag=temp_hit] run fill ~-1 ~ ~1 ~-1 ~ ~1 minecraft:cobweb replace #dvz:go_through
execute if entity @p[tag=temp_hit] at @p[tag=temp_hit] run fill ~-1 ~ ~-1 ~-1 ~ ~-1 minecraft:cobweb replace #dvz:go_through
execute if entity @p[tag=temp_hit] at @p[tag=temp_hit] run fill ~1 ~2 ~1 ~1 ~2 ~1 minecraft:cobweb replace #dvz:go_through
execute if entity @p[tag=temp_hit] at @p[tag=temp_hit] run fill ~1 ~2 ~-1 ~1 ~2 ~-1 minecraft:cobweb replace #dvz:go_through
execute if entity @p[tag=temp_hit] at @p[tag=temp_hit] run fill ~-1 ~2 ~1 ~-1 ~2 ~1 minecraft:cobweb replace #dvz:go_through
execute if entity @p[tag=temp_hit] at @p[tag=temp_hit] run fill ~-1 ~2 ~-1 ~-1 ~2 ~-1 minecraft:cobweb replace #dvz:go_through
execute unless entity @p[tag=temp_hit] at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] positioned ^ ^ ^-0.1 run fill ~ ~ ~ ~ ~2 ~ minecraft:cobweb replace #dvz:go_through
execute unless entity @p[tag=temp_hit] at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] positioned ^ ^ ^-0.1 run fill ~-1 ~1 ~ ~1 ~1 ~ minecraft:cobweb replace #dvz:go_through
execute unless entity @p[tag=temp_hit] at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] positioned ^ ^ ^-0.1 run fill ~ ~1 ~-1 ~ ~1 ~1 minecraft:cobweb replace #dvz:go_through
execute unless entity @p[tag=temp_hit] at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] positioned ^ ^ ^-0.1 run fill ~1 ~ ~1 ~1 ~ ~1 minecraft:cobweb replace #dvz:go_through
execute unless entity @p[tag=temp_hit] at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] positioned ^ ^ ^-0.1 run fill ~1 ~ ~-1 ~1 ~ ~-1 minecraft:cobweb replace #dvz:go_through
execute unless entity @p[tag=temp_hit] at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] positioned ^ ^ ^-0.1 run fill ~-1 ~ ~1 ~-1 ~ ~1 minecraft:cobweb replace #dvz:go_through
execute unless entity @p[tag=temp_hit] at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] positioned ^ ^ ^-0.1 run fill ~-1 ~ ~-1 ~-1 ~ ~-1 minecraft:cobweb replace #dvz:go_through
execute unless entity @p[tag=temp_hit] at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] positioned ^ ^ ^-0.1 run fill ~1 ~2 ~1 ~1 ~2 ~1 minecraft:cobweb replace #dvz:go_through
execute unless entity @p[tag=temp_hit] at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] positioned ^ ^ ^-0.1 run fill ~1 ~2 ~-1 ~1 ~2 ~-1 minecraft:cobweb replace #dvz:go_through
execute unless entity @p[tag=temp_hit] at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] positioned ^ ^ ^-0.1 run fill ~-1 ~2 ~1 ~-1 ~2 ~1 minecraft:cobweb replace #dvz:go_through
execute unless entity @p[tag=temp_hit] at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] positioned ^ ^ ^-0.1 run fill ~-1 ~2 ~-1 ~-1 ~2 ~-1 minecraft:cobweb replace #dvz:go_through

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=ray]

### Remove tags
tag @s remove temp_ray_origin

tag @a remove temp_hit
tag @a remove temp_big_hitbox
tag @a remove temp_medium_hitbox
tag @a remove temp_small_hitbox