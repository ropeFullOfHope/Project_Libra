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

# Frozen custom effect
tag @s remove ogvz.attribute.frozen.movement_speed
attribute @s minecraft:movement_speed modifier remove ogvz.frozen.movement_speed
tag @s remove ogvz.attribute.frozen.jump_strength
attribute @s minecraft:movement_speed modifier remove ogvz.frozen.jump_strength

# Dolphin's grace nerf
tag @s remove ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency
attribute @s minecraft:water_movement_efficiency modifier remove ogvz.dolphins_grace_nerf.water_movement_efficiency

# Pearl rod - teleportation
attribute @s minecraft:movement_speed modifier remove ogvz.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.teleporting.jump_strength

# Dragon warrior - dragon form
attribute @s minecraft:attack_damage modifier remove ogvz.dragon_form.attack_damage
attribute @s minecraft:movement_speed modifier remove ogvz.dragon_form.movement_speed

# Spider - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.spider.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.spider.jump_strength
attribute @s minecraft:safe_fall_distance modifier remove ogvz.spider.safe_fall_distance

# Blaze - firefly
attribute @s minecraft:gravity modifier remove ogvz.blaze.firefly.gravity

# Chicken Nugget - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.chicken_nugget.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.chicken_nugget.jump_strength
attribute @s minecraft:fall_damage_multiplier modifier remove ogvz.chicken_nugget.fall_damage_multiplier

# Chicken Nugget - base attributes
attribute @s minecraft:movement_speed modifier remove ogvz.ocelot.movement_speed
attribute @s minecraft:fall_damage_multiplier modifier remove ogvz.ocelot.fall_damage_multiplier

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

# Golem - leap
attribute @s minecraft:gravity modifier remove ogvz.leap.gravity
