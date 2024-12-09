# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: wolf_rally
# Function Name: ogvz:zombie/ability/wolf/wolf_rally
# File Purpose: Buff your wolves.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.07
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Revoke advancement, so it can be obtained again.
advancement revoke @s only ogvz:custom_enchantments/wolf_rally

# Add a temporary tag.
tag @s add temp.target

# Check all nearby wolves for their owner. If the targeted player is their owner, buff them.
execute as @e[type=minecraft:wolf,distance=..16] at @s run function ogvz:zombie/ability/wolf/wolf_rally_check

# Remove the temporary tag.
tag @s remove temp.target