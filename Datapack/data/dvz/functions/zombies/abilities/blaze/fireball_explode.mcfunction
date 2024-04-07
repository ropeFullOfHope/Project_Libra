# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: fireball_explode
# Function Name: dvz:zombies/blaze/fireball_explode
# File Purpose: Sets area on fire.
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

fill ~-2 ~-1 ~-1 ~2 ~1 ~1 minecraft:fire replace #dvz:go_through
fill ~-1 ~-2 ~-1 ~1 ~2 ~1 minecraft:fire replace #dvz:go_through
fill ~-1 ~-1 ~-2 ~1 ~1 ~2 minecraft:fire replace #dvz:go_through

execute as @a[distance=..2.5] run damage @s 4 minecraft:fireball by @p[tag=blaze]

kill @s