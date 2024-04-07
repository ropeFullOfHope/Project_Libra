# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: delirium
# Function Name: dvz:zombies/phantom/delirium
# File Purpose: Shoots a ray that gives random debuffs to the player hit.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.14
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.delirium.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Delirium]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.delirium.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.delirium.cool=1..}] run return 0

scoreboard players set @s DVZ.delirium.cool 8

title @s actionbar [ \
  "", \
  {"text":"[Delirium]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.phantom.bite player @a ~ ~ ~ 1 1

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp_ray_origin

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add ray

# Teleports the marker to the player's eyes and makes it face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/phantom/delirium_loop

# Create temporary scoreboards.
scoreboard objectives add DVZ.rng1.temp dummy
scoreboard objectives add DVZ.rng2.temp dummy
scoreboard objectives add DVZ.rng3.temp dummy

# Create 3 different random numbers with range 0 to 9.
execute store result score @s DVZ.rng1.temp run random value 0..9
execute store result score @s DVZ.rng2.temp run random value 0..8
execute store result score @s DVZ.rng3.temp run random value 0..7
execute if score @s DVZ.rng2.temp >= @s DVZ.rng1.temp run scoreboard players add @s DVZ.rng2.temp 1
execute if score @s DVZ.rng2.temp < @s DVZ.rng1.temp run scoreboard players operation @s DVZ.rng1.temp >< @s DVZ.rng2.temp
execute if score @s DVZ.rng3.temp >= @s DVZ.rng1.temp run scoreboard players add @s DVZ.rng3.temp 1
execute if score @s DVZ.rng3.temp >= @s DVZ.rng2.temp run scoreboard players add @s DVZ.rng3.temp 1

# Depending on the first random number, give the targeted player a random debuff.
execute if entity @s[scores={DVZ.rng1.temp=0}] run effect give @a[tag=temp_hit] minecraft:slowness 20 1
execute if entity @s[scores={DVZ.rng1.temp=1}] run effect give @a[tag=temp_hit] minecraft:mining_fatigue 20 2
execute if entity @s[scores={DVZ.rng1.temp=2}] run effect give @a[tag=temp_hit] minecraft:darkness 20 0
execute if entity @s[scores={DVZ.rng1.temp=3}] run effect give @a[tag=temp_hit] minecraft:hunger 20 2
execute if entity @s[scores={DVZ.rng1.temp=4}] run effect give @a[tag=temp_hit] minecraft:weakness 20 0
execute if entity @s[scores={DVZ.rng1.temp=5}] run effect give @a[tag=temp_hit] minecraft:poison 20 0
execute if entity @s[scores={DVZ.rng1.temp=6}] run effect give @a[tag=temp_hit] minecraft:wither 20 0
execute if entity @s[scores={DVZ.rng1.temp=7}] run effect give @a[tag=temp_hit] minecraft:glowing 20 0
execute if entity @s[scores={DVZ.rng1.temp=8}] run effect give @a[tag=temp_hit] minecraft:bad_omen 20 0
execute if entity @s[scores={DVZ.rng1.temp=9}] run effect give @a[tag=temp_hit] minecraft:unluck 20 4

# Depending on the second random number, give the targeted player a random debuff.
execute if entity @s[scores={DVZ.rng2.temp=0}] run effect give @a[tag=temp_hit] minecraft:slowness 20 1
execute if entity @s[scores={DVZ.rng2.temp=1}] run effect give @a[tag=temp_hit] minecraft:mining_fatigue 20 2
execute if entity @s[scores={DVZ.rng2.temp=2}] run effect give @a[tag=temp_hit] minecraft:darkness 20 0
execute if entity @s[scores={DVZ.rng2.temp=3}] run effect give @a[tag=temp_hit] minecraft:hunger 20 2
execute if entity @s[scores={DVZ.rng2.temp=4}] run effect give @a[tag=temp_hit] minecraft:weakness 20 0
execute if entity @s[scores={DVZ.rng2.temp=5}] run effect give @a[tag=temp_hit] minecraft:poison 20 0
execute if entity @s[scores={DVZ.rng2.temp=6}] run effect give @a[tag=temp_hit] minecraft:wither 20 0
execute if entity @s[scores={DVZ.rng2.temp=7}] run effect give @a[tag=temp_hit] minecraft:glowing 20 0
execute if entity @s[scores={DVZ.rng2.temp=8}] run effect give @a[tag=temp_hit] minecraft:bad_omen 20 0
execute if entity @s[scores={DVZ.rng2.temp=9}] run effect give @a[tag=temp_hit] minecraft:unluck 20 4

# Depending on the third random number, give the targeted player a random debuff.
execute if entity @s[scores={DVZ.rng3.temp=0}] run effect give @a[tag=temp_hit] minecraft:slowness 20 1
execute if entity @s[scores={DVZ.rng3.temp=1}] run effect give @a[tag=temp_hit] minecraft:mining_fatigue 20 2
execute if entity @s[scores={DVZ.rng3.temp=2}] run effect give @a[tag=temp_hit] minecraft:darkness 20 0
execute if entity @s[scores={DVZ.rng3.temp=3}] run effect give @a[tag=temp_hit] minecraft:hunger 20 2
execute if entity @s[scores={DVZ.rng3.temp=4}] run effect give @a[tag=temp_hit] minecraft:weakness 20 0
execute if entity @s[scores={DVZ.rng3.temp=5}] run effect give @a[tag=temp_hit] minecraft:poison 20 0
execute if entity @s[scores={DVZ.rng3.temp=6}] run effect give @a[tag=temp_hit] minecraft:wither 20 0
execute if entity @s[scores={DVZ.rng3.temp=7}] run effect give @a[tag=temp_hit] minecraft:glowing 20 0
execute if entity @s[scores={DVZ.rng3.temp=8}] run effect give @a[tag=temp_hit] minecraft:bad_omen 20 0
execute if entity @s[scores={DVZ.rng3.temp=9}] run effect give @a[tag=temp_hit] minecraft:unluck 20 4

# Remove temporary scoreboards.
scoreboard objectives remove DVZ.rng1.temp
scoreboard objectives remove DVZ.rng2.temp
scoreboard objectives remove DVZ.rng3.temp

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=ray]

# Remove tags
tag @s remove temp_ray_origin
tag @a remove temp_hit
tag @a remove temp_big_hitbox
tag @a remove temp_medium_hitbox
tag @a remove temp_small_hitbox