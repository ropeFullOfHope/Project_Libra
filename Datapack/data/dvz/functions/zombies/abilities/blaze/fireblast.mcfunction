# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: fireblast
# Function Name: dvz:zombies/blaze/fireblast
# File Purpose: Clears water and damages surrounding players. Deals extra damage to ones on fire.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.19
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.fireblast.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Fireblast]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.fireblast.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.fireblast.cool=1..}] run return 0

scoreboard players set @s DVZ.fireblast.cool 10

title @s actionbar [ \
  "", \
  {"text":"[Fireblast]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 2
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 1

particle minecraft:flame ~ ~ ~ 2 0 2 0 300 normal

# Deal extra damage to players on fire.
execute as @a[distance=..4,predicate=dvz:is_on_fire] run damage @s 9 minecraft:on_fire by @p[tag=blaze]
execute as @a[distance=..3,predicate=dvz:is_on_fire] run damage @s 13.5 minecraft:on_fire by @p[tag=blaze]
execute as @a[distance=..2,predicate=dvz:is_on_fire] run damage @s 18 minecraft:on_fire by @p[tag=blaze]

# Deal normal damage to player not on fire.
execute as @a[distance=..4,predicate=!dvz:is_on_fire] run damage @s 6 minecraft:on_fire by @p[tag=blaze]
execute as @a[distance=..3,predicate=!dvz:is_on_fire] run damage @s 9 minecraft:on_fire by @p[tag=blaze]
execute as @a[distance=..2,predicate=!dvz:is_on_fire] run damage @s 12 minecraft:on_fire by @p[tag=blaze]

# Clear water in an area.
fill ~-4 ~-1 ~-2 ~4 ~2 ~2 minecraft:air replace minecraft:water
fill ~-3 ~-1 ~-3 ~3 ~2 ~3 minecraft:air replace minecraft:water
fill ~-2 ~-1 ~-4 ~2 ~2 ~4 minecraft:air replace minecraft:water