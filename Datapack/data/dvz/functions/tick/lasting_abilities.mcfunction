# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: lasting_abilities
# Function Name: dvz:tick/lasting_abilities
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

# Chicken Nugget - Fly
execute as @a[tag=chicken_nugget,scores={dvz.chicken_fly.ticks=1..}] at @s run function dvz:zombies/chicken_nugget/fly_loop

# Chicken Nugget - Egg Barrage
execute as @e[type=minecraft:egg,tag=eggsplosion] at @s run tp @e[type=minecraft:marker,tag=eggsplosion,limit=1,sort=nearest] @s
execute as @e[type=minecraft:marker,tag=eggsplosion] at @s unless entity @e[type=minecraft:egg,tag=eggsplosion,distance=..0.1] run function dvz:zombies/chicken_nugget/egg_barrage_explode

# Snowman - Snowball Barrage
execute as @e[type=minecraft:snowball,tag=damaging] at @s positioned ~ ~-1.8 ~ as @a[tag=!ice_type,distance=..2] run function dvz:zombies/snowman/snowball_barrage_hit

# Snowman - Icicle
execute as @a[scores={dvz.freeze.ticks=1..}] at @s run function dvz:zombies/snowman/icicle_freeze_loop

# Chillager - Invisibility
execute as @a[scores={dvz.invisibility.ticks=1..}] at @s run function dvz:zombies/chillager/invisibility_loop

# Chillager - Ice Cube
execute as @a[tag=!chillager,scores={dvz.inventory.7071=1..}] at @s run function dvz:zombies/chillager/ice_cube_box

# Bee - Pollen Bomb
execute as @e[type=minecraft:potion,tag=beenade] at @s run tp @e[type=minecraft:marker,tag=beenade,limit=1,sort=nearest] @s
execute as @e[type=minecraft:marker,tag=beenade] at @s unless entity @e[type=minecraft:potion,tag=beenade,distance=..0.1] run function dvz:zombies/bee/pollen_bomb_explode

# Phantom - Shrouding Fog
execute as @e[type=minecraft:potion,tag=fognade] at @s run tp @e[type=minecraft:marker,tag=fognade,limit=1,sort=nearest] @s
execute as @e[type=minecraft:marker,tag=fognade] at @s unless entity @e[type=minecraft:potion,tag=fognade,distance=..0.1] run function dvz:zombies/phantom/shrouding_fog_explode

# Blaze - Fireball
execute as @e[type=minecraft:small_fireball,tag=blazeball] at @s run tp @e[type=minecraft:marker,tag=blazeball,limit=1,sort=nearest] @s
execute as @e[type=minecraft:marker,tag=blazeball] at @s unless entity @e[type=minecraft:small_fireball,tag=blazeball,distance=..0.1] run function dvz:zombies/blaze/fireball_explode

# Blaze - Fly
execute as @a[tag=blaze,scores={dvz.blaze_fly.ticks=1..}] at @s run function dvz:zombies/blaze/firefly_loop

# Hoglin - Golden Pickaxe
execute as @a[tag=hoglin,scores={dvz.use.golden_pickaxe=1..}] at @s run function dvz:zombies/hoglin/eat