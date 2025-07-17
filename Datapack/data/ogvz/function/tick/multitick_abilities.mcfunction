# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: multitick_abilities
# Function Name: ogvz:tick/multitick_abilities
# File Purpose: Function tree for abilities that last more than 1 tick.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.07
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Blaze - Fireball
execute as @e[type=minecraft:small_fireball,tag=ogvz.projectile.blaze_fireball] at @s run function ogvz:zombie/ability/blaze/fireball_loop
execute as @e[type=minecraft:marker,tag=ogvz.projectile.blaze_fireball] on vehicle on passengers run tag @s add temp.exclude
execute as @e[type=minecraft:marker,tag=ogvz.projectile.blaze_fireball,tag=!temp.exclude] at @s run function ogvz:zombie/ability/blaze/fireball_burn
execute as @e[type=minecraft:marker,tag=ogvz.projectile.blaze_fireball] run tag @s remove temp.exclude

# Blaze - Firefly
execute as @a[tag=ogvz.zombie.class.blaze,scores={ogvz.blaze.firefly.duration.ticks=1..}] at @s run function ogvz:zombie/ability/blaze/firefly_loop

# Chicken Nugget - Eggsplosive Egg
execute as @e[type=minecraft:area_effect_cloud,tag=ogvz.projectile.eggsplosive_egg] at @s run function ogvz:zombie/ability/chicken_nugget/eggsplosive_egg_hit

# Chillager - Invisibility
execute as @a[tag=ogvz.zombie.class.chillager] at @s run function ogvz:zombie/ability/chillager/invisibility_change

# Chillager - Ice Bridge
execute as @e[type=minecraft:marker,tag=ogvz.ice] at @s run function ogvz:zombie/ability/chillager/ice_bridge_melt

# Snowman - Snowball Barrage
execute as @e[type=minecraft:area_effect_cloud,tag=ogvz.projectile.snowball_barrage] at @s run function ogvz:zombie/ability/snowman/snowball_barrage_hit

# Bee - Pollen Bomb
execute as @e[type=minecraft:marker,tag=ogvz.projectile.pollen_bomb] at @s run function ogvz:zombie/ability/bee/pollen_bomb_heal

# Silverfish - Silverfish Egg regeneration
execute as @a[tag=ogvz.zombie.class.silverfish,scores={ogvz.silverfish.silverfish_egg.warmup.ticks=1..}] at @s run function ogvz:zombie/ability/silverfish/silverfish_egg_regenerate

# Silverfish - AI Silverfish
execute as @e[type=minecraft:silverfish,tag=!ogvz.silverfish.processed] at @s run function ogvz:zombie/ability/silverfish/ai_silverfish_init
execute as @e[type=minecraft:silverfish,tag=ogvz.silverfish.processed] at @s run function ogvz:zombie/ability/silverfish/ai_silverfish_main

# Enderman - Create Portal
execute as @a[tag=ogvz.zombie.class.enderman.creating_portal.above,scores={ogvz.enderman.create_portal.warmup.seconds=..0}] at @s run function ogvz:zombie/ability/enderman/create_portal_create_above
execute as @a[tag=ogvz.zombie.class.enderman.creating_portal.below,scores={ogvz.enderman.create_portal.warmup.seconds=..0}] at @s run function ogvz:zombie/ability/enderman/create_portal_create_below
execute as @e[type=minecraft:marker,tag=ogvz.marker.ender_portal,tag=!ogvz.marker.ender_portal.animation] at @s run function ogvz:zombie/ability/enderman/ender_portal_check
execute as @e[type=minecraft:marker,tag=ogvz.marker.ender_portal.animation] at @s run function ogvz:zombie/ability/enderman/ender_portal_animation

# Ender Eye - Teleport
execute as @a[tag=ogvz.zombie.teleporting,scores={ogvz.zombie.ender_eye.warmup.seconds=..0}] at @s run function ogvz:zombie/ability/enderman/ender_eye_teleport
