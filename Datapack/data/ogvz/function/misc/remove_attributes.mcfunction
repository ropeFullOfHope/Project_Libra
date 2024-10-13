# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: remove_attributes
# Function Name: ogvz:misc/remove_attributes
# File Purpose: Called to remove all attributes on a player.
# Created By: ropeFullOfHope
# 
# Created On: 2024.09.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: Also removes tags used to track certain attribute modifiers.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

tag @s remove ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency
attribute @s minecraft:generic.water_movement_efficiency modifier remove ogvz.dolphins_grace_nerf.water_movement_efficiency

attribute @s minecraft:generic.movement_speed modifier remove ogvz.teleporting.movement_speed
attribute @s minecraft:generic.jump_strength modifier remove ogvz.teleporting.jump_strength
