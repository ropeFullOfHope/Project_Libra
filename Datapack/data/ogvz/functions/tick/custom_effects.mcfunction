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

# Unluck -> Curse (Removes all buffs.)
execute as @a[predicate=ogvz:effect/unluck] at @s run function ogvz:custom_effects/curse

# Hero of the Village -> Mana Regeneration (Regenerate extra mana.)
execute as @a[tag=mana,predicate=ogvz:effect/hero_of_the_village/0] at @s run function ogvz:custom_effects/mana_regeneration_0
execute as @a[tag=mana,predicate=ogvz:effect/hero_of_the_village/1] at @s run function ogvz:custom_effects/mana_regeneration_1
execute as @a[tag=mana,predicate=ogvz:effect/hero_of_the_village/2] at @s run function ogvz:custom_effects/mana_regeneration_2
execute as @a[tag=mana,predicate=ogvz:effect/hero_of_the_village/3] at @s run function ogvz:custom_effects/mana_regeneration_3
execute as @a[tag=mana,predicate=ogvz:effect/hero_of_the_village/4] at @s run function ogvz:custom_effects/mana_regeneration_4
execute as @a[tag=mana,predicate=ogvz:effect/hero_of_the_village/5] at @s run function ogvz:custom_effects/mana_regeneration_5
execute as @a[tag=mana,predicate=ogvz:effect/hero_of_the_village/6] at @s run function ogvz:custom_effects/mana_regeneration_6
execute as @a[tag=mana,predicate=ogvz:effect/hero_of_the_village/7] at @s run function ogvz:custom_effects/mana_regeneration_7
execute as @a[tag=mana,predicate=ogvz:effect/hero_of_the_village/8] at @s run function ogvz:custom_effects/mana_regeneration_8
execute as @a[tag=mana,predicate=ogvz:effect/hero_of_the_village/9] at @s run function ogvz:custom_effects/mana_regeneration_9