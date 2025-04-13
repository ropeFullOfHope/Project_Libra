# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: fireball_loop
# Function Name: ogvz:zombie/ability/blaze/fireball_loop
# File Purpose: Handles the lifetime of the fireball.
# Created By: ropeFullOfHope
# 
# Created On: 2025.04.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Kill the fireball and exit the function if it's lifetime has reached 0.
execute as @s[scores={ogvz.blaze.fireball.lifetime.ticks=..0}] run return run kill @s

# Decrement the fireball's lifetime by 1.
scoreboard players remove @s ogvz.blaze.fireball.lifetime.ticks 1
