# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: firefly_loop
# Function Name: ogvz:zombie/ability/blaze/firefly_loop
# File Purpose: Loop for making the player fly.
# Created By: ropeFullOfHope
# 
# Created On: 2025.03.12
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute positioned ^ ^ ^0.8 unless block ~-0.3 ~ ~-0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~-0.3 ~ ~0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~0.3 ~ ~-0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~0.3 ~ ~0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~-0.3 ~1.8 ~-0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~-0.3 ~1.8 ~0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~0.3 ~1.8 ~-0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop
execute positioned ^ ^ ^0.8 unless block ~0.3 ~1.8 ~0.3 #ogvz:go_through run return run function ogvz:zombie/ability/blaze/firefly_stop

tp @s ^ ^ ^0.8

execute at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 10

scoreboard players remove @s ogvz.blaze.firefly.duration.ticks 1

execute as @s[scores={ogvz.blaze.firefly.duration.ticks=0}] at @s run function ogvz:zombie/ability/blaze/firefly_stop
