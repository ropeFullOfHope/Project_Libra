# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: wolf_suicide
# Function Name: ogvz:misc/wolf_suicide
# File Purpose: Kills all wolves belonging to dead players.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.07
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: Only dogs are killed on player death, because the developer prefers cats... and because cats are fucking useless.
#           Or maybe it's because dogs would die for you, while cats would eat your corpse...
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Add temporary tag.
tag @s add temp.target

# Return if the owner is still alive.
execute on owner as @s[tag=ogvz.dead] run kill @n[type=minecraft:wolf,tag=temp.target]

# Remove temporary tag.
tag @s remove temp.target
