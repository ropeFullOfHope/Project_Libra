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
# Dragon Warrior (40xx)
# Wither Warrior (41xx)
execute as @s[tag=ogvz.dwarf.class.hero.wither_warrior] store result score @s ogvz.inventory.soulstone run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:4102}] 0
# Assassin Slayer (42xx)
# Dwarven Guard (43xx)

### Dwarf legendary items (5xxx)


### Zombie abilities (6xxx)
# Zombie variants (600x)
execute as @s[tag=ogvz.zombie.class.zombie_variant] store result score @s ogvz.inventory.undying_bond run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:6000}] 0
# Zombie (601x)
# Husk (602x)
# Vindicator (603x)
# Drowned (604x)
# Skeleton variants (610x)
# Skeleton (611x)
# Wither skeleton (612x)
# Pillager (613x)
# Guardian (614x)
# Creeper (620x)
# Spider (621x)
# Blaze (630x)
# Chillager (631x)
# Ocelot (632x)
# Phantom (633x)
# Snowman (634x)
# Wolf (635x)
# Piglin (640x)
execute as @s[tag=ogvz.zombie.class.piglin] store result score @s ogvz.inventory.evolution run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:6400}] 0
# Silverfish (641x)
# Hoglin (651x)
# Enderman (660x)
# Golem (661x)
# Aquatic zombies (690x)
execute as @s[tag=ogvz.zombie.aquatic] store result score @s ogvz.inventory.sharing_grace run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={passive_id:6900}] 0

### Zombie boss abilities (7xxx)


### Zombie nature given abilities (8xxx)


### Other (9xxx)

