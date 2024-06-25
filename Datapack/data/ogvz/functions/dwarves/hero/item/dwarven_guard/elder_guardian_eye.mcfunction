# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: elder_guardian_eye
# Function Name: ogvz:dwarves/hero/elder_guardian_eye
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

execute if entity @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Elder Guardian Eye]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=1..}] run return 0

# Remove 10 levels.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 10

scoreboard players set @s ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds 3

title @s actionbar [ \
  "", \
  {"text":"[Elder Guardian Eye]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp.ray_origin

# Create the scoreboard used for spinning particles.
scoreboard objectives add ogvz.spin.temp dummy
scoreboard players set @s ogvz.spin.temp 0

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add temp.ray

# Teleports the marker to the player's eyes and makes it face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=temp.ray,limit=1,sort=nearest] at @s run function ogvz:dwarves/hero/dwarven_guard/elder_guardian_eye_loop

# Deals damage to all players who have been hit by the ray.
execute as @a[tag=temp.hit,tag=zombies] run damage @s 12 minecraft:magic by @p[tag=temp.ray_origin]
execute as @a[tag=temp.hit,tag=dwarves] run damage @s 3 minecraft:magic by @p[tag=temp.ray_origin]

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=temp.ray]

# Remove scoreboard
scoreboard objectives remove ogvz.spin.temp

# Remove tags
tag @s remove temp.ray_origin
tag @a remove temp.hit
tag @a remove temp.big_hitbox
tag @a remove temp.medium_hitbox
tag @a remove temp.small_hitbox