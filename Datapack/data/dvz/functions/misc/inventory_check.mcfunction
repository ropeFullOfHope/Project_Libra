# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: passive_detect
# Function Name: dvz:tick/inventory_check
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

advancement revoke @s only dvz:misc/inventory_update

### Non-passive items
execute as @s store result score @s dvz.inventory.lava_bucket run clear @s minecraft:lava_bucket 0
execute as @s[tag=!chillager] store result score @s dvz.inventory.7071 run clear @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=7071] 0

### Dwarf items (1xxx)


### Dwarf hero passive abilities (2xxx)


### Dwarf legendary artifacts (3xxx)


### Dwarf legendary weapons (4xxx)


### Zombie passive abilities (5xxx)
# Zombie (500x)
execute as @s[tag=zombie] store result score @s dvz.inventory.5000 run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_model_data=5000] 0
# Husk (501x)
execute as @s[tag=husk] store result score @s dvz.inventory.5010 run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_model_data=5010] 0
# Vindicator (502x)
execute as @s[tag=vindicator] store result score @s dvz.inventory.5020 run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_model_data=5020] 0
# Drowned (503x)
execute as @s[tag=drowned] store result score @s dvz.inventory.5030 run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_model_data=5030] 0
# Wither Skeleton (504x)
execute as @s[tag=wither_skeleton] store result score @s dvz.inventory.5040 run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_model_data=5040] 0
# Spider (505x)
execute as @s[tag=spider] store result score @s dvz.inventory.5050 run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_model_data=5050] 0
# Phantom (506x)
execute as @s[tag=phantom] store result score @s dvz.inventory.5060 run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_model_data=5060] 0
# Blaze (507x)
execute as @s[tag=blaze] store result score @s dvz.inventory.5070 run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_model_data=5070] 0
execute as @s[tag=blaze] store result score @s dvz.inventory.5071 run clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_model_data=5071] 0

### Zombie nature given passive abilities (6xxx)


### Other (7xxx)
