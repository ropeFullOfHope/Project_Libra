# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: passive_detect
# Function Name: ogvz:tick/passive_detect
# File Purpose: Handles the effects of all passive items.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.09
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: All passive items are retextured carrot on a stick. Scoreboards are updated in ogvz:misc/inventory_check.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

### Dwarf items (11xxx)


### Dwarf hero items (12xxx)


### Dwarf legendary items (13xxx)


### Dwarf legendary weapons (14xxx)


### Zombie abilities (15xxx)
# Zombie (1500x)
execute as @s[tag=ogvz.zombie.class.zombie_variant.zombie,scores={ogvz.inventory.coas.15000=1..}] at @s run function ogvz:zombie/zombie/regenerative_bond
# Husk (1501x)
execute as @s[tag=ogvz.zombie.class.zombie_variant.husk,scores={ogvz.inventory.coas.15010=1..}] at @s run function ogvz:zombie/husk/speedy_bond
# Vindicator (1502x)
execute as @s[tag=ogvz.zombie.class.zombie_variant.vindicator,scores={ogvz.inventory.coas.15020=1..}] at @s run function ogvz:zombie/vindicator/hasty_bond
# Drowned (1503x)
execute as @s[tag=ogvz.zombie.class.zombie_variant.drowned,scores={ogvz.inventory.coas.15030=1..}] at @s run function ogvz:zombie/drowned/graceful_bond
# Wither Skeleton (1504x)
execute as @s[tag=ogvz.zombie.class.skeleton_variant.wither_skeleton,scores={ogvz.inventory.coas.15040=1..}] at @s run function ogvz:zombie/wither_skeleton/withering_bones
# Spider (1505x)
execute as @s[tag=ogvz.zombie.class.spider,scores={ogvz.inventory.coas.15050=1..}] at @s run function ogvz:zombie/spider/poison_resistance
# Phantom (1506x)
execute as @s[tag=ogvz.zombie.class.phantom,scores={ogvz.inventory.coas.15060=1..}] at @s run function ogvz:zombie/phantom/reusable_firework_rocket
# Blaze (1507x)
execute as @s[tag=ogvz.zombie.class.blaze,scores={ogvz.inventory.coas.15070=1..}] at @s run function ogvz:zombie/blaze/fire_coat
execute as @s[tag=ogvz.zombie.class.blaze,scores={ogvz.inventory.coas.15071=1..}] at @s run function ogvz:zombie/blaze/fire_shield

### Zombie nature abilities (16xxx)


### Other (17xxx)
