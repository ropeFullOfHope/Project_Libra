# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: howl
# Function Name: dvz:zombies/wolf/howl
# File Purpose: Summons a pack of Wolves, loyal to the player using this function.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

title @s actionbar [ \
  "", \
  {"text":"[Howl]","bold":true,"color":"dark_green"}, \
  {"text":" Poof!","color":"dark_green"} \
]

playsound minecraft:entity.wolf.howl player @a ~ ~ ~ 0.3 1

# Summons 6 Wolves. Their owner is the Wolf summoning them.
execute summon minecraft:wolf run data modify entity @s Owner set from entity @p UUID
execute summon minecraft:wolf run data modify entity @s Owner set from entity @p UUID
execute summon minecraft:wolf run data modify entity @s Owner set from entity @p UUID
execute summon minecraft:wolf run data modify entity @s Owner set from entity @p UUID
execute summon minecraft:wolf run data modify entity @s Owner set from entity @p UUID
execute summon minecraft:wolf run data modify entity @s Owner set from entity @p UUID

# Sets the AI Wolf collar to white so they look like wolves instead of dogs.
execute as @e[type=minecraft:wolf,distance=..0.1,limit=6,sort=nearest] run data modify entity @s CollarColor set value 0b
# Sets the AI Wolf breeding cooldown to maximum possible.
execute as @e[type=minecraft:wolf,distance=..0.1,limit=6,sort=nearest] run data modify entity @s Age set value 2147483647
# Gives the summoned Wolves the summoned tag.
execute as @e[type=minecraft:wolf,distance=..0.1,limit=6,sort=nearest] run tag @s add summon

clear @s minecraft:carrot_on_a_stick{CustomModelData:7030} 1