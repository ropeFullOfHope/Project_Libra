# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: fly
# Function Name: dvz:zombies/chicken_nugget/fly
# File Purpose: Starts the flying process.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.22
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.chicken_fly.tick=1..}] run scoreboard players set @s DVZ.chicken_fly.tick 1
execute if entity @s[scores={DVZ.chicken_fly.tick=1..}] run return 0

execute if entity @s[scores={DVZ.fly.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Fly]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.fly.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.fly.cool=1..}] run return 0

scoreboard players set @s DVZ.fly.cool 20

title @s actionbar [ \
  "", \
  {"text":"[Fly]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 1 2

# Flying duration in tick. 20 ticks is 1 second.
scoreboard players set @s DVZ.chicken_fly.tick 100

# Levitation 255 makes you float in place.
effect give @s minecraft:levitation 6 255 true