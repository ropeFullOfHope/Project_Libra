# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: custom_unluck_effects
# Function Name: ogvz:tick/custom_unluck_effects
# File Purpose: Applies custom instant effects to players with specific level of unluck effect.
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
effect give @s[tag=ogvz.zombie,predicate=ogvz:effect/unluck/1] minecraft:instant_health 1 0 true

# Instant Health 2 for zombies only.
effect give @s[tag=ogvz.zombie,predicate=ogvz:effect/unluck/2] minecraft:instant_health 1 1 true

# Clear the unluck effect.
effect clear @s minecraft:unluck
