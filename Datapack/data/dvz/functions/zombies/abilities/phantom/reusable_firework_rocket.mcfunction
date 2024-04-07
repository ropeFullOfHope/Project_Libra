# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/passive_detect
# File Name: reusable_firework_rocket
# Function Name: dvz:zombies/phantom/reusable_firework_rocket
# File Purpose: Returns the firework rocket a short while after it has been used.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.18
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Check how many reusable firework rockets the player has and store it into a scoreboard.
execute store result score @s DVZ.result.score run clear @s minecraft:firework_rocket{reusable:1} 0

# Clear all the firework rockets over the max limit.
execute if score @s DVZ.result.score matches 6.. run function dvz:zombies/phantom/reusable_firework_rocket_loop

# If the player has max amount of firework rockets, reset the cooldown.
execute if score @s DVZ.result.score matches 5.. run scoreboard players set @s DVZ.reusable_firework_rocket.tick 0

# Give the player a firework rocket if the cooldown is done.
execute if score @s DVZ.reusable_firework_rocket.tick matches 1 run give @s firework_rocket{reusable:1,Fireworks:{Flight:1b},display:{Lore:['{"text":"Reusable","italic":false,"color":"gray"}']}}

# Count down the cooldown.
execute if score @s DVZ.reusable_firework_rocket.tick matches 1.. run scoreboard players remove @s DVZ.reusable_firework_rocket.tick 1

# Start cooldown if the player has less then the max limit of firework rockets.
execute if entity @s[scores={DVZ.result.score=..4,DVZ.reusable_firework_rocket.tick=0}] run scoreboard players set @s DVZ.reusable_firework_rocket.tick 100