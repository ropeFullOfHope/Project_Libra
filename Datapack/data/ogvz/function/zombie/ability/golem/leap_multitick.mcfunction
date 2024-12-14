# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: leap_multitick
# Function Name: ogvz:zombie/ability/golem/leap_multitick
# File Purpose: Finite state machine for the leap ability.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.13
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# State -3: Do nothing

# State -2: Do nothing

# State -1: Remove attribute.
execute as @s[scores={ogvz.golem.leap.state=-1}] run attribute @s minecraft:gravity modifier remove ogvz.leap.gravity

# Increment step.
scoreboard players add @s ogvz.golem.leap.state 1
