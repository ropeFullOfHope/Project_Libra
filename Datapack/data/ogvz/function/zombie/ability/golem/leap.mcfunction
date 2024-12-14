# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: leap
# Function Name: ogvz:zombie/ability/golem/leap
# File Purpose: Boost the player high into the air.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.06
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Return if the player is not on ground.
execute unless predicate ogvz:is_on_ground run return 0

execute if entity @s[scores={ogvz.golem.leap.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Leap]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.golem.leap.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.golem.leap.cooldown.seconds=1..}] run return 0

scoreboard players set @s ogvz.golem.leap.cooldown.seconds 20

title @s actionbar [ \
  "", \
  {"text":"[Leap]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:entity.iron_golem.repair player @a ~ ~ ~ 8 0.5

particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.25 0 0.25 0.1 30

# Invert the player's gravity. The lower the number, the higher the jump.
attribute @s minecraft:gravity modifier add ogvz.leap.gravity -0.65 add_value

# Initialize the leap's multi-tick finite state machine.
scoreboard players set @s ogvz.golem.leap.state -3
