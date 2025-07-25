# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: fireball_burn
# Function Name: ogvz:zombie/ability/blaze/fireball_burn
# File Purpose: Sets area around the marker ablaze.
# Created By: ropeFullOfHope
# 
# Created On: 2025.04.13
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Set 3 * 3 * 3 area on fire.
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire replace #ogvz:non_solid_blocks

# Kill marker.
kill @s