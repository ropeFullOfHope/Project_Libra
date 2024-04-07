# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/snowman/icicle
# File Name: icicle_loop_2
# Function Name: dvz:zombies/snowman/icicle_loop_2
# File Purpose: Player teleportation loop, to ground them.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Exit out of loop if player is grounded.
execute unless block ~ ~-0.1 ~ #dvz:go_through run return 0

# Teleport player down.
tp @s ~ ~-0.1 ~

# Repeat loop.
execute as @s at @s run function dvz:zombies/snowman/icicle_loop_1