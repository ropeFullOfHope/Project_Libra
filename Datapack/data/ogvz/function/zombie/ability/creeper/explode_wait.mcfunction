# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: explode_wait
# Function Name: ogvz:zombie/ability/creeper/explode_wait
# File Purpose: Wait and go to next state.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.06
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Next state.
tag @s[tag=ogvz.state.wait_1] add ogvz.state.explode_again
tag @s[tag=ogvz.state.wait_1] remove ogvz.state.wait_1

# Next state.
tag @s[tag=ogvz.state.wait_0] add ogvz.state.wait_1
tag @s[tag=ogvz.state.wait_0] remove ogvz.state.wait_0