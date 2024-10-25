# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: dolphins_grace_nerf
# Function Name: ogvz:tick/dolphins_grace_nerf
# File Purpose: Nerfs the depth strider + dolphin's grace combo.
# Created By: ropeFullOfHope
# 
# Created On: 2024.10.13
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Determine if the player has to be nerfed (hasn't been nerfed yet, but has dolphin's grace) or has to be un-nerfed (has been nerfed, but no longer has dolphin's grace).
tag @s[tag=!ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency,predicate=ogvz:effect/dolphins_grace] add temp.nerf
tag @s[tag=ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency,predicate=!ogvz:effect/dolphins_grace] add temp.unnerf

# Nerf the player.
tag @s[tag=temp.nerf] add ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency
attribute @s[tag=temp.nerf] minecraft:water_movement_efficiency modifier add ogvz.dolphins_grace_nerf.water_movement_efficiency -1 add_multiplied_total

# Un-nerf the player.
tag @s[tag=temp.unnerf] remove ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency
attribute @s[tag=temp.unnerf] minecraft:water_movement_efficiency modifier remove ogvz.dolphins_grace_nerf.water_movement_efficiency

# Remove temporary tags.
tag @s remove temp.nerf
tag @s remove temp.unnerf