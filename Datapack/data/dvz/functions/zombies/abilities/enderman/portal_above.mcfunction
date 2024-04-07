# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: portal_above
# Function Name: dvz:zombies/enderman/portal_above
# File Purpose: Creates a portal above you and teleports you to it.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.portal.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Create Portal Above You]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.portal.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.portal.cool=1..}] run return 0

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp_ray_origin

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add ray

# Teleports the marker to the player's eyes and makes it face up.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] ~ ~ ~ ~ -90

# Starts the ray casting loop.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/enderman/portal_above_loop

# Teleport the ray back a bit.
execute as @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] at @s run tp @s ^ ^ ^-3

# If the ray hasn't traveled far enough, then warn the player.
execute unless entity @e[type=minecraft:marker,tag=ray,distance=3..] run title @s actionbar [ \
  "", \
  {"text":"[Create Portal Above You]","bold":true,"color":"dark_red"}, \
  {"text":" There is not enough room above you!","color":"dark_red"} \
]

# Tell player the ability has activated.
execute if entity @e[type=minecraft:marker,tag=ray,distance=3..] run title @s actionbar [ \
  "", \
  {"text":"[Create Portal Above You]","bold":true,"color":"dark_red"}, \
  {"text":" Poof!","color":"dark_red"} \
]

# If the ray is far enough, create a portal at the location of the ray.
execute if entity @e[type=minecraft:marker,tag=ray,distance=3..] as @s at @e[type=minecraft:marker,tag=ray,limit=1,sort=nearest] run function dvz:zombies/enderman/portal_create

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=ray]

# Remove tags
tag @s remove temp_ray_origin