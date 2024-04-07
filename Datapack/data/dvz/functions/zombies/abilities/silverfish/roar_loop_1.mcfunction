# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/silverfish/roar
# File Name: roar_loop_1
# Function Name: dvz:zombies/silverfish/roar_loop_1
# File Purpose: Loop to hatch all infested stone from nearby infestation markers.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.23
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute store result score @s DVZ.result.score at @e[type=minecraft:marker,tag=infestation,limit=1,sort=arbitrary] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:infested_stone

kill @e[type=minecraft:marker,tag=infestation,limit=1,sort=arbitrary]

execute as @s at @s if entity @s[scores={DVZ.result.score=1..}] run function dvz:zombies/silverfish/roar_loop_2

give @s minecraft:heart_of_the_sea{ \
  CustomModelData:1000, \
  display:{ \
    Name:'{"text":"Silverfish Egg Cluster","italic":false,"color":"white"}' \
  } \
} 1

execute as @s at @s if entity @e[type=minecraft:marker,tag=infestation,distance=..16] run function dvz:zombies/silverfish/roar_loop_1