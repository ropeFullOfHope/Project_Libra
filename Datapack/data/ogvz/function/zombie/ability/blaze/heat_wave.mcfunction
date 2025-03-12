# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: heat_wave
# Function Name: ogvz:zombie/ability/blaze/heat_wave
# File Purpose: Quickly places and removes sponges.
# Created By: ropeFullOfHope
# 
# Created On: 2025.03.09
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={ogvz.blaze.heat_wave.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Heat Wave]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.blaze.heat_wave.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.blaze.heat_wave.cooldown.seconds=1..}] run return 0

scoreboard players set @s ogvz.blaze.heat_wave.cooldown.seconds 15

title @s actionbar [ \
  "", \
  {"text":"[Heat Wave]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 0.75

particle minecraft:flame ~ ~1 ~ 1.25 1.5 1.25 0.05 100

fill ~-2 ~-2 ~-2 ~ ~ ~ minecraft:water[level=7] replace #minecraft:air

clone ~ ~ ~ ~ ~ ~ 0 -64 0 replace force
setblock ~ ~ ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
setblock 0 -64 0 minecraft:air

clone ~ ~1 ~ ~ ~1 ~ 0 -64 0 replace force
setblock ~ ~1 ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~1 ~ replace force
setblock 0 -64 0 minecraft:air

fill ~-2 ~-2 ~2 ~ ~ ~ minecraft:water[level=7] replace #minecraft:air

clone ~ ~ ~ ~ ~ ~ 0 -64 0 replace force
setblock ~ ~ ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
setblock 0 -64 0 minecraft:air

clone ~ ~1 ~ ~ ~1 ~ 0 -64 0 replace force
setblock ~ ~1 ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~1 ~ replace force
setblock 0 -64 0 minecraft:air

fill ~2 ~-2 ~-2 ~ ~ ~ minecraft:water[level=7] replace #minecraft:air

clone ~ ~ ~ ~ ~ ~ 0 -64 0 replace force
setblock ~ ~ ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
setblock 0 -64 0 minecraft:air

clone ~ ~1 ~ ~ ~1 ~ 0 -64 0 replace force
setblock ~ ~1 ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~1 ~ replace force
setblock 0 -64 0 minecraft:air

fill ~2 ~-2 ~2 ~ ~ ~ minecraft:water[level=7] replace #minecraft:air

clone ~ ~ ~ ~ ~ ~ 0 -64 0 replace force
setblock ~ ~ ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
setblock 0 -64 0 minecraft:air

clone ~ ~1 ~ ~ ~1 ~ 0 -64 0 replace force
setblock ~ ~1 ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~1 ~ replace force
setblock 0 -64 0 minecraft:air

fill ~-2 ~3 ~-2 ~ ~1 ~ minecraft:water[level=7] replace #minecraft:air

clone ~ ~1 ~ ~ ~1 ~ 0 -64 0 replace force
setblock ~ ~1 ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~1 ~ replace force
setblock 0 -64 0 minecraft:air

clone ~ ~ ~ ~ ~ ~ 0 -64 0 replace force
setblock ~ ~ ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
setblock 0 -64 0 minecraft:air

fill ~-2 ~3 ~2 ~ ~1 ~ minecraft:water[level=7] replace #minecraft:air

clone ~ ~1 ~ ~ ~1 ~ 0 -64 0 replace force
setblock ~ ~1 ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~1 ~ replace force
setblock 0 -64 0 minecraft:air

clone ~ ~ ~ ~ ~ ~ 0 -64 0 replace force
setblock ~ ~ ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
setblock 0 -64 0 minecraft:air

fill ~2 ~3 ~-2 ~ ~1 ~ minecraft:water[level=7] replace #minecraft:air

clone ~ ~1 ~ ~ ~1 ~ 0 -64 0 replace force
setblock ~ ~1 ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~1 ~ replace force
setblock 0 -64 0 minecraft:air

clone ~ ~ ~ ~ ~ ~ 0 -64 0 replace force
setblock ~ ~ ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
setblock 0 -64 0 minecraft:air

fill ~2 ~3 ~2 ~ ~1 ~ minecraft:water[level=7] replace #minecraft:air

clone ~ ~1 ~ ~ ~1 ~ 0 -64 0 replace force
setblock ~ ~1 ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~1 ~ replace force
setblock 0 -64 0 minecraft:air

clone ~ ~ ~ ~ ~ ~ 0 -64 0 replace force
setblock ~ ~ ~ minecraft:sponge
clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
setblock 0 -64 0 minecraft:air

stopsound @a * minecraft:block.sponge.absorb

fill ~-2 ~-2 ~-2 ~2 ~3 ~2 minecraft:air replace minecraft:water
