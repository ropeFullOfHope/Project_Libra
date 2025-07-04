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

### Non-passive items
# Lava Bucket
execute as @s[tag=!ogvz.admin,scores={ogvz.inventory.lava_bucket=1..}] at @s run function ogvz:misc/lava_bucket

### Admin tools


### Discs


### Dwarf items


### Dwarf hero items


### Dwarf legendary items


### Zombie abilities
# Zombie variants
execute as @s[tag=ogvz.zombie.class.zombie_variant,scores={ogvz.inventory.undying_bond=1..}] at @s run function ogvz:zombie/ability/zombie_variant/undying_bond
# Chicken Nugget
execute as @s[tag=ogvz.zombie.class.chicken_nugget,scores={ogvz.inventory.flutter=1..}] at @s run function ogvz:zombie/ability/chicken_nugget/flutter
# Piglin
execute as @s[tag=ogvz.zombie.class.piglin,scores={ogvz.piglin.used.golden_pickaxe=1..}] at @s run function ogvz:zombie/ability/piglin/evolution
# Aquatic zombies
execute as @s[tag=ogvz.zombie.aquatic,scores={ogvz.inventory.sharing_grace=1..}] at @s run function ogvz:zombie/ability/aquatic/sharing_grace

### Zombie boss abilities


### Zombie nature given abilities


### Other

