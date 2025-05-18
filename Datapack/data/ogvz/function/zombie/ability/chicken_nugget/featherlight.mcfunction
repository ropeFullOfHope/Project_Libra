# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: featherlight
# Function Name: ogvz:zombie/ability/chicken_nugget/featherlight
# File Purpose: Grants permanent slow falling. Can be temporarily disabled by sneaking.
# Created By: ropeFullOfHope
# 
# Created On: 2025.05.10
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

effect give @s[predicate=!ogvz:is_sneaking] minecraft:slow_falling infinite 0 true

effect clear @s[predicate=ogvz:is_sneaking] minecraft:slow_falling
