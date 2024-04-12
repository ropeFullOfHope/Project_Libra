# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: custom_instant_effects
# Function Name: ogvz:tick/custom_luck_effects
# File Purpose: Applies custom instant effects to players with specific level of luck effect.
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

# Instant Health for zombies only.
effect give @a[tag=zombies,predicate=ogvz:effect/luck/100] minecraft:instant_health 1 0 true
effect clear @a[predicate=ogvz:effect/luck/100] minecraft:luck

# Instant Health 2 for zombies only.
effect give @a[tag=zombies,predicate=ogvz:effect/luck/101] minecraft:instant_health 1 1 true
effect clear @a[predicate=ogvz:effect/luck/101] minecraft:luck
