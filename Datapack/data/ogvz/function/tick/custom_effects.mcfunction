# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: custom_effects
# Function Name: ogvz:tick/custom_effects
# File Purpose: Repurposes certain vanilla effects.
# Created By: ropeFullOfHope
# 
# Created On: 2024.01.06
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Luck -> Mana Regeneration
execute as @s[tag=ogvz.mana,predicate=ogvz:effect/luck/0] at @s run function ogvz:custom_effects/mana_regeneration_0