# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: explode_multitick
# Function Name: ogvz:zombie/ability/creeper/explode_multitick
# File Purpose: Finite state machine for creeper's explode ability.
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

# State -4: Do nothing.

# State -3: Do nothing.

# State -2: Give all nearby players complete explosion knocback resistance, then explode again.
execute as @s[scores={ogvz.creeper.explode.state=-2}] run tag @a[distance=..16] add ogvz.attribute.explode.explosion_knockback_resistance
execute as @s[scores={ogvz.creeper.explode.state=-2}] run execute as @a[tag=ogvz.attribute.explode.explosion_knockback_resistance] run attribute @s minecraft:explosion_knockback_resistance modifier add ogvz.explosion.explosion_knockback_resistance 1 add_value
execute as @s[scores={ogvz.creeper.explode.state=-2}] run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0s,attributes:[{id:"minecraft:scale",base:0.0625}]}

# State -1: Remove attribute from all players.
execute as @s[scores={ogvz.creeper.explode.state=-1}] run execute as @a[tag=ogvz.attribute.explode.explosion_knockback_resistance] run attribute @s minecraft:explosion_knockback_resistance modifier remove ogvz.explosion.explosion_knockback_resistance

# Increment step.
scoreboard players add @s ogvz.creeper.explode.state 1
