# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: dragon_scale_explode
# Function Name: ogvz:dwarf/item/hero/dragon_warrior/dragon_scale_explode
# File Purpose: Explode after taking damage from the firework rocket while flying.
# Created By: ropeFullOfHope
# 
# Created On: 2024.11.01
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

advancement revoke @s only ogvz:misc/dragon_warrior_take_damage_from_own_firework_rocket_while_in_dragon_form

# Return if the player has already exploded. ("damage @s 50 minecraft:fireworks by @s" will call the advancement again)
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.damage=10000..}] run return 0
# Return if the player wasn't flying (can happen if they shoot themselves with a firework rocket shot from the crossbow).
execute as @s[predicate=!ogvz:is_flying] run return 0

# Gurantee that the player will lose their dragon form.
scoreboard players set @s ogvz.dragon_warrior.dragon_scale.damage 10000

# Damage the player to further punish using the overpowered firework rockets with an elytra.
damage @s 70 minecraft:fireworks by @s

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 2