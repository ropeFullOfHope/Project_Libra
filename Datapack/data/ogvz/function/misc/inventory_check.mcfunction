# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: passive_detect
# Function Name: ogvz:tick/inventory_check
# File Purpose: Checks what special items the player has and stores the info into scoreboards.
# Created By: ropeFullOfHope
# 
# Created On: 2023.11.22
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

advancement revoke @s only ogvz:misc/inventory_update

### Non-passive items
# Lava Bucket
execute as @s store result score @s ogvz.inventory.lava_bucket run clear @s minecraft:lava_bucket 0
# Ice Cube
execute as @s[tag=!ogvz.zombie.class.chillager] store result score @s ogvz.inventory.7071 run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=7071] 0

### Dwarf items (11xxx)


### Dwarf hero items (12xxx)


### Dwarf legendary items (13xxx)


### Dwarf legendary weapons (14xxx)


### Zombie abilities (15xxx)
# Zombie (1500x)
execute as @s[tag=ogvz.zombie.class.zombie_variant.zombie] store result score @s ogvz.inventory.coas.15000 run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=15000] 0
# Husk (1501x)
execute as @s[tag=ogvz.zombie.class.zombie_variant.husk] store result score @s ogvz.inventory.coas.15010 run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=15010] 0
# Vindicator (1502x)
execute as @s[tag=ogvz.zombie.class.zombie_variant.vindicator] store result score @s ogvz.inventory.coas.15020 run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=15020] 0
# Drowned (1503x)
execute as @s[tag=ogvz.zombie.class.zombie_variant.drowned] store result score @s ogvz.inventory.coas.15030 run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=15030] 0
# Wither Skeleton (1504x)
execute as @s[tag=ogvz.zombie.class.skeleton_variant.wither_skeleton] store result score @s ogvz.inventory.coas.15040 run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=15040] 0
# Spider (1505x)
execute as @s[tag=ogvz.zombie.class.spider] store result score @s ogvz.inventory.coas.15050 run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=15050] 0
# Phantom (1506x)
execute as @s[tag=ogvz.zombie.class.phantom] store result score @s ogvz.inventory.coas.15060 run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=15060] 0
# Blaze (1507x)
execute as @s[tag=ogvz.zombie.class.blaze] store result score @s ogvz.inventory.coas.15070 run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=15070] 0
execute as @s[tag=ogvz.zombie.class.blaze] store result score @s ogvz.inventory.coas.15071 run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=15071] 0

### Zombie nature abilities (16xxx)


### Other (17xxx)
