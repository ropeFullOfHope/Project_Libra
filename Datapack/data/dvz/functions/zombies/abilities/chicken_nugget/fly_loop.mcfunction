# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: fly_loop
# Function Name: dvz:zombies/chicken_nugget/fly_loop
# File Purpose: Teleportation loop for Chicken Nugget's Fly.
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

# Stop flying early if player would hit a block.
execute unless block ^ ^ ^1.8 #dvz:go_through run scoreboard players set @s DVZ.chicken_fly.tick 0
execute unless block ^ ^ ^1.8 #dvz:go_through run effect clear @s minecraft:levitation
execute unless block ^ ^ ^1.8 #dvz:go_through run return 0

# Teleport player forward.
tp @s ^ ^ ^0.8

scoreboard players remove @s DVZ.chicken_fly.tick 1

# Remove levitaion if flight timer runs out.
execute if score @s DVZ.chicken_fly.tick matches ..0 run effect clear @s minecraft:levitation