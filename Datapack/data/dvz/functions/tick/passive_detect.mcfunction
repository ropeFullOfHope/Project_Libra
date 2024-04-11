# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: passive_detect
# Function Name: dvz:tick/passive_detect
# File Purpose: Handles the effects of all passive items.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.09
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: All passive items are retextured fungus on a stick. Scoreboards are updated in dvz:misc/inventory_check.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

### Dwarf items (11xxx)


### Dwarf hero items (12xxx)


### Dwarf legendary items (13xxx)


### Dwarf legendary weapons (14xxx)


### Zombie abilities (15xxx)
# Zombie (1500x)
execute as @s[tag=zombie,scores={DVZ.inventory.15000=1..}] at @s run function dvz:zombies/zombie/regenerative_bond
# Husk (1501x)
execute as @s[tag=husk,scores={DVZ.inventory.15010=1..}] at @s run function dvz:zombies/husk/speedy_bond
# Vindicator (1502x)
execute as @s[tag=vindicator,scores={DVZ.inventory.15020=1..}] at @s run function dvz:zombies/vindicator/hasty_bond
# Drowned (1503x)
execute as @s[tag=drowned,scores={DVZ.inventory.15030=1..}] at @s run function dvz:zombies/drowned/graceful_bond
# Wither Skeleton (1504x)
execute as @s[tag=wither_skeleton,scores={DVZ.inventory.15040=1..}] at @s run function dvz:zombies/wither_skeleton/withering_bones
# Spider (1505x)
execute as @s[tag=spider,scores={DVZ.inventory.15050=1..}] at @s run function dvz:zombies/spider/poison_resistance
# Phantom (1506x)
execute as @s[tag=phantom,scores={DVZ.inventory.15060=1..}] at @s run function dvz:zombies/phantom/reusable_firework_rocket
# Blaze (1507x)
execute as @s[tag=blaze,scores={DVZ.inventory.15070=1..}] at @s run function dvz:zombies/blaze/fire_coat
execute as @s[tag=blaze,scores={DVZ.inventory.15071=1..}] at @s run function dvz:zombies/blaze/fire_shield

### Zombie nature abilities (16xxx)


### Other (17xxx)
