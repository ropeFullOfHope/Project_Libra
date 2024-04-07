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

### Dwarf items (1xxx)


### Dwarf hero passive abilities (2xxx)


### Dwarf legendary artifacts (3xxx)


### Dwarf legendary weapons (4xxx)


### Zombie passive abilities (5xxx)
# Zombie (500x)
execute as @s[tag=zombie,scores={DVZ.inventory.5000=1..}] at @s run function dvz:zombies/zombie/regenerative_bond
# Husk (501x)
execute as @s[tag=husk,scores={DVZ.inventory.5010=1..}] at @s run function dvz:zombies/husk/speedy_bond
# Vindicator (502x)
execute as @s[tag=vindicator,scores={DVZ.inventory.5020=1..}] at @s run function dvz:zombies/vindicator/hasty_bond
# Drowned (503x)
execute as @s[tag=drowned,scores={DVZ.inventory.5030=1..}] at @s run function dvz:zombies/drowned/graceful_bond
# Wither Skeleton (504x)
execute as @s[tag=wither_skeleton,scores={DVZ.inventory.5040=1..}] at @s run function dvz:zombies/wither_skeleton/withering_bones
# Spider (505x)
execute as @s[tag=spider,scores={DVZ.inventory.5050=1..}] at @s run function dvz:zombies/spider/poison_resistance
# Phantom (506x)
execute as @s[tag=phantom,scores={DVZ.inventory.5060=1..}] at @s run function dvz:zombies/phantom/reusable_firework_rocket
# Blaze (507x)
execute as @s[tag=blaze,scores={DVZ.inventory.5070=1..}] at @s run function dvz:zombies/blaze/fire_coat
execute as @s[tag=blaze,scores={DVZ.inventory.5071=1..}] at @s run function dvz:zombies/blaze/fire_shield

### Zombie nature given passive abilities (6xxx)


### Other (7xxx)
