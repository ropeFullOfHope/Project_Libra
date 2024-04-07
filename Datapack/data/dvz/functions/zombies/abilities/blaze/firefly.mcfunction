# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: firefly
# Function Name: dvz:zombies/blaze/firefly
# File Purpose: Starts the flying process.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.18
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.blaze_fly.tick=1..}] run scoreboard players set @s DVZ.blaze_fly.tick 1
execute if entity @s[scores={DVZ.blaze_fly.tick=1..}] run return 0

execute if entity @s[scores={DVZ.firefly.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Firefly]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.firefly.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.firefly.cool=1..}] run return 0

scoreboard players set @s DVZ.firefly.cool 15

title @s actionbar [ \
  "", \
  {"text":"[Firefly]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 1 2

# Flying duration in tick. 20 ticks is 1 second.
scoreboard players set @s DVZ.blaze_fly.tick 40

# Levitation 255 makes you float in place.
effect give @s minecraft:levitation 3 255 true

# Clear armor.
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air

# Blaze is invulnerable and invisible during fireflight.
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:invisibility infinite 0 true