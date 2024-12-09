# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: wolf_rally_check
# Function Name: ogvz:zombie/ability/wolf/wolf_rally_check
# File Purpose: Checks if the wolf belongs to the targeted player.
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

# Add temporary tag.
tag @s add temp.target

# Buff the wolf if it belongs to the targeted player.
execute on owner as @s[tag=temp.target] run effect give @n[type=minecraft:wolf,tag=temp.target] minecraft:strength 2 0

# Remove temporary tag.
tag @s remove temp.target
