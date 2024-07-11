# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: advancement ogvz:misc/eat_cake
# File Name: eat_cake
# Function Name: ogvz:misc/eat_cake
# File Purpose: Gives regeneration after eating cake.
# Created By: ropeFullOfHope
# 
# Created On: 2024.07.01
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

advancement revoke @s only ogvz:misc/eat_cake

effect give @s minecraft:regeneration 10 1

# Replace all cakes with only 1 bite left with air.
fill ~-8 ~-8 ~-8 ~8 ~-8 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~-7 ~-8 ~8 ~-7 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~-6 ~-8 ~8 ~-6 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~-5 ~-8 ~8 ~-5 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~-4 ~-8 ~8 ~-4 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~-3 ~-8 ~8 ~-3 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~-2 ~-8 ~8 ~-2 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~-1 ~-8 ~8 ~-1 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~0 ~-8 ~8 ~0 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~1 ~-8 ~8 ~1 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~2 ~-8 ~8 ~2 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~3 ~-8 ~8 ~3 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~4 ~-8 ~8 ~4 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~5 ~-8 ~8 ~5 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~6 ~-8 ~8 ~6 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~7 ~-8 ~8 ~7 ~8 minecraft:air replace minecraft:cake[bites=6]
fill ~-8 ~8 ~-8 ~8 ~8 ~8 minecraft:air replace minecraft:cake[bites=6]
