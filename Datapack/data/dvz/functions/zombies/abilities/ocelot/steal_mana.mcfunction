# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: steal_mana
# Function Name: dvz:zombies/ocelot/steal_mana
# File Purpose: Shoots a beam that steals mana from the target and gives it to the ocelot.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.16
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.steal_mana.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Steal Mana]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.steal_mana.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.steal_mana.cool=1..}] run return 0

scoreboard players set @s DVZ.steal_mana.cool 10

title @s actionbar [ \
  "", \
  {"text":"[Steal Mana]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.cat.stray_ambient player @a ~ ~ ~ 1 0.7

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add ray_origin

# Summons a marker at players feet and gives it the ray tag.
execute at @s summon minecraft:marker run tag @s add ray

# Teleports the marker to the player's eyes and makes it face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/ocelot/steal_mana_loop_1

# Play sound at the player who got their mana stolen.
execute as @a[tag=hit] at @s run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1

# If targeted player has 30 mana or more, remove 30 mana and give 30 mana to the ocelot. A loop is required if target player has between 1 and 29 mana.
scoreboard objectives add DVZ.current_mana.temp dummy
execute as @a[tag=hit] store result score @s DVZ.current_mana.temp run experience query @s levels
execute as @a[tag=hit,scores={DVZ.current_mana.temp=30..}] run experience add @s -30 levels
execute as @a[tag=hit,scores={DVZ.current_mana.temp=30..}] run experience add @p[tag=ray_origin] 30 levels
execute as @a[tag=hit,scores={DVZ.current_mana.temp=1..29}] run experience set @s 0 levels
execute as @a[tag=hit,scores={DVZ.current_mana.temp=1..29}] run function dvz:zombies/ocelot/steal_mana_loop_2
scoreboard objectives remove DVZ.current_mana.temp

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=ray]

# Remove tags
tag @s remove ray_origin
tag @a remove hit
tag @a remove big_hitbox
tag @a remove medium_hitbox
tag @a remove small_hitbox