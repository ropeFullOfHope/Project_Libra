# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: portal_teleport
# Function Name: dvz:zombies/enderman/portal_teleport
# File Purpose: Teleport the player to the enderman's portal.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Teleport the player to the portal.
execute at @e[type=minecraft:marker,tag=portal] run tp @s ~ ~0.1 ~

# Play sound after teleporting.
execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1

# Clear the ability from player's inventory.
clear @s minecraft:carrot_on_a_stick{CustomModelData:9002}