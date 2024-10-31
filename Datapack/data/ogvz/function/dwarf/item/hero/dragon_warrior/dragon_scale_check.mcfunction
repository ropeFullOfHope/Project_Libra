# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: dragon_scale_check
# Function Name: ogvz:dwarf/item/hero/dragon_warrior/dragon_scale_check
# File Purpose: Checks if the dragon warrior has been damage enough to lose thier dragon from.
# Created By: ropeFullOfHope
# 
# Created On: 2024.10.31
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

advancement revoke @s only ogvz:misc/dragon_warrior_take_damage_while_in_dragon_form

execute as @s[scores={ogvz.dragon_warrior.dragon_scale.damage=500..}] at @s run function ogvz:dwarf/item/hero/dragon_warrior/dragon_scale_remove

execute as @s at @s run function ogvz:dwarf/item/hero/dragon_warrior/dragon_scale_custom_bar
