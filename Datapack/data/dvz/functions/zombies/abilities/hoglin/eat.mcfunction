# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: eat
# Function Name: dvz:zombies/hoglin/eat
# File Purpose: Give expierence towards hoglin evolution.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.20
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

scoreboard players set @s DVZ.use.golden_pickaxe 0

execute unless entity @s[gamemode=adventure,predicate=dvz:is_evolution_tag_in_mainhand] run return 0

execute if entity @s run scoreboard players add @s DVZ.experience 1

execute if entity @s[tag=lvl_1] run playsound minecraft:entity.fox.eat player @a ~ ~ ~ 1 1.2
execute if entity @s[tag=lvl_2] run playsound minecraft:entity.donkey.eat player @a ~ ~ ~ 1 1

execute if entity @s[tag=lvl_1,scores={DVZ.experience=64..}] run function dvz:zombies/hoglin/evolve_1
execute if entity @s[tag=lvl_2,scores={DVZ.experience=64..}] run function dvz:zombies/hoglin/evolve_2