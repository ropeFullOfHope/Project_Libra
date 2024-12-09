# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: explode_remove_attribte
# Function Name: ogvz:zombie/ability/creeper/explode_remove_attribte
# File Purpose: Remove the explosion knocback resistance attribute.
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

# Remove explosion knocback resistance from all players.
execute as @a[tag=ogvz.attribute.explode.explosion_knockback_resistance] run attribute @s minecraft:explosion_knockback_resistance modifier remove ogvz.explosion.explosion_knockback_resistance
tag @a remove ogvz.attribute.explode.explosion_knockback_resistance

# Remove marker.
kill @s
