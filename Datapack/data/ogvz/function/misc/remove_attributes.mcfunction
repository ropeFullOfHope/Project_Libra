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

# Dolphin's grace nerf
tag @s remove ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency
attribute @s minecraft:water_movement_efficiency modifier remove ogvz.dolphins_grace_nerf.water_movement_efficiency

# Pearl rod - teleportation
attribute @s minecraft:movement_speed modifier remove ogvz.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.teleporting.jump_strength

# Dragon warrior - dragon form
attribute @s minecraft:attack_damage modifier remove ogvz.dragon_form.attack_damage
attribute @s minecraft:movement_speed modifier remove ogvz.dragon_form.movement_speed

# Creeper - explode
tag @s remove ogvz.attribute.explode.explosion_knockback_resistance
attribute @s minecraft:explosion_knockback_resistance modifier remove ogvz.explosion.explosion_knockback_resistance

# Wolf - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.wolf.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.wolf.jump_strength
attribute @s minecraft:safe_fall_distance modifier remove ogvz.wolf.safe_fall_distance

# Piglin - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.piglin.movement_speed

# Hoglin - base attributes
attribute @s minecraft:max_health modifier remove ogvz.hoglin.max_health

# Golem - base attributes
attribute @s minecraft:max_health modifier remove ogvz.golem.max_health
attribute @s minecraft:attack_damage modifier remove ogvz.golem.attack_damage
attribute @s minecraft:attack_speed modifier remove ogvz.golem.attack_speed
attribute @s minecraft:knockback_resistance modifier remove ogvz.golem.knockback_resistance
attribute @s minecraft:explosion_knockback_resistance modifier remove ogvz.golem.explosion_knockback_resistance
attribute @s minecraft:movement_speed modifier remove ogvz.golem.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.golem.jump_strength
attribute @s minecraft:fall_damage_multiplier modifier remove ogvz.golem.fall_damage_multiplier
