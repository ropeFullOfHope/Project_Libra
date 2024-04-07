# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: firefly_loop
# Function Name: dvz:zombies/blaze/firefly_loop
# File Purpose: Teleportation loop for Blaze's Firefly.
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

# Stop flying early if player would hit a block.
execute unless block ^ ^ ^1.8 #dvz:go_through run scoreboard players set @s DVZ.blaze_fly.tick 0
execute unless block ^ ^ ^1.8 #dvz:go_through run effect clear @s minecraft:levitation
execute unless block ^ ^ ^1.8 #dvz:go_through run effect clear @s minecraft:resistance
execute unless block ^ ^ ^1.8 #dvz:go_through run effect clear @s minecraft:invisibility
execute unless block ^ ^ ^1.8 #dvz:go_through run function dvz:zombies/blaze/armor_up
execute unless block ^ ^ ^1.8 #dvz:go_through run return 0

# Teleport player forward.
tp @s ^ ^ ^0.8

scoreboard players remove @s DVZ.blaze_fly.tick 1

# Remove levitaion and resistance and re-equip the blaze's armor if flight timer runs out.
execute if score @s DVZ.blaze_fly.tick matches ..0 run effect clear @s minecraft:levitation
execute if score @s DVZ.blaze_fly.tick matches ..0 run effect clear @s minecraft:resistance
execute if score @s DVZ.blaze_fly.tick matches ..0 run effect clear @s minecraft:invisibility
execute if score @s DVZ.blaze_fly.tick matches ..0 run function dvz:zombies/blaze/armor_up