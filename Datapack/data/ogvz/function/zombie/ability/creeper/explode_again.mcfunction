# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: explode_again
# Function Name: ogvz:zombie/ability/creeper/explode_again
# File Purpose: Explode the marker.
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

# Give all players nearby explosion knockback resistance.
tag @a[distance=..16] add ogvz.attribute.explode.explosion_knockback_resistance
execute as @a[tag=ogvz.attribute.explode.explosion_knockback_resistance] run attribute @s minecraft:explosion_knockback_resistance modifier add ogvz.explosion.explosion_knockback_resistance 1 add_value

# Explode again.
summon minecraft:creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0s,attributes:[{id:"minecraft:scale",base:0.0625}]}

# Next state.
tag @s remove ogvz.state.explode_again
tag @s add ogvz.state.remove_attributes
