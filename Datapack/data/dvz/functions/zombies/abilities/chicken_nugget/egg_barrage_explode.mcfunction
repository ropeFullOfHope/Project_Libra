# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: egg_barrage_explosion
# Function Name: dvz:zombies/chicken_nugget/egg_barrage_explosion
# File Purpose: Creates an explosion and kills the marker.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.26
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

summon creeper ~ ~ ~ {Fuse:0s,NoAI:1b,Invulnerable:1b,ExplosionRadius:2b}
kill @s