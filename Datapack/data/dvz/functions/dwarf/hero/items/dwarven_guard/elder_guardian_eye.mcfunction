# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: elder_guardian_eye
# Function Name: dvz:dwarves/hero/elder_guardian_eye
# File Purpose: Shoots a beam that deals magic damage and pierces players.
# Created By: ropeFullOfHope
# 
# Created On: 2024.02.24
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @s[level=10..] run title @s actionbar [ \
  "", \
  {"text":"[Elder Guardian Eye]","bold":true,"color":"dark_red"}, \
  {"text":" You need at least ","color":"dark_red"}, \
  {"text":"10 mana","bold":true,"color":"dark_red"}, \
  {"text":"!","color":"dark_red"} \
]
execute unless entity @s[level=10..] run return 0

execute if entity @s[scores={dvz.elder_guardian_eye.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Elder Guardian Eye]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"dvz.elder_guardian_eye.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={dvz.elder_guardian_eye.cool=1..}] run return 0

# Remove 10 levels.
scoreboard players remove @s dvz.mana_buildup 10000

scoreboard players set @s dvz.elder_guardian_eye.cool 3

title @s actionbar [ \
  "", \
  {"text":"[Elder Guardian Eye]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp_ray_origin

# Create the scoreboard used for spinning particles.
scoreboard objectives add dvz.spin.temp dummy
scoreboard players set @s dvz.spin.temp 0

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add ray

# Teleports the marker to the player's eyes and makes it face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:dwarves/hero/dwarven_guard/elder_guardian_eye_loop

# Deals damage to all players who have been hit by the ray.
execute as @a[tag=temp_hit,tag=zombies] run damage @s 12 minecraft:magic by @p[tag=temp_ray_origin]
execute as @a[tag=temp_hit,tag=dwarves] run damage @s 3 minecraft:magic by @p[tag=temp_ray_origin]

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=ray]

# Remove scoreboard
scoreboard objectives remove dvz.spin.temp

# Remove tags
tag @s remove temp_ray_origin
tag @a remove temp_hit
tag @a remove temp_big_hitbox
tag @a remove temp_medium_hitbox
tag @a remove temp_small_hitbox