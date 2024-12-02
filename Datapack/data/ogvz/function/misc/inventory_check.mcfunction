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

### Admin tools (1xxx)


### Discs (2xxx)


### Dwarf items (3xxx)


### Dwarf hero items (4xxx)
# Wither Warrior (41xx)
execute as @s store result score @s ogvz.inventory.soulstone run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:4102}] 0

### Dwarf legendary items (5xxx)


### Zombie abilities (6xxx)


### Zombie boss abilities (7xxx)


### Zombie nature given abilities (8xxx)


### Other (9xxx)

