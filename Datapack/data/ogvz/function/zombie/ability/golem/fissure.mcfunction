# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: fissure
# Function Name: dvz:zombie/ability/golem/fissure
# File Purpose: Raises ground to form a wall.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.14
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={ogvz.golem.fissure.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Fissure]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.golem.fissure.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.golem.fissure.cooldown.seconds=1..}] run return 0

scoreboard players set @s ogvz.golem.fissure.cooldown.seconds 5

title @s actionbar [ \
  "", \
  {"text":"[Fissure]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:block.chain.break player @a ~ ~ ~ 8 0.5
playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 8 0.5

# Summon two markers at the players feet and give them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers up a little bit, make them face in the same direction as the player and zero their yaw.
execute positioned ~ ~0.5 ~ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ 0
execute positioned ~ ~0.5 ~ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ 0

# Teleports the ray marker slightly forward.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run tp @s ^ ^ ^1.5

# Starts the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/golem/fissure_loop

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]
kill @e[type=minecraft:marker,tag=temp.fissure]
