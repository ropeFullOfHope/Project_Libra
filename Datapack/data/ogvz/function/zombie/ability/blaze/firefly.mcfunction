# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: firefly
# Function Name: ogvz:zombie/ability/blaze/firefly
# File Purpose: Makes the player fly.
# Created By: ropeFullOfHope
# 
# Created On: 2025.03.12
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={ogvz.blaze.firefly.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Firefly]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.blaze.firefly.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.blaze.firefly.cooldown.seconds=1..}] run return 0

scoreboard players set @s ogvz.blaze.firefly.cooldown.seconds 15

title @s actionbar [ \
  "", \
  {"text":"[Firefly]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1.8

scoreboard players set @s ogvz.blaze.firefly.duration.ticks 40

attribute @s minecraft:gravity modifier add ogvz.blaze.firefly.gravity -1 add_multiplied_total

effect give @s minecraft:invisibility infinite 0 true
effect give @s minecraft:resistance infinite 4 true
