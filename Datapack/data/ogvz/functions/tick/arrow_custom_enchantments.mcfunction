# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: arrow_custom_enchantments
# Function Name: ogvz:tick/arrow_custom_enchantments
# File Purpose: Applies certain Bow/Custom custom enchantments to the arrow.
# Created By: ropeFullOfHope
# 
# Created On: 2024.02.09
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: If an enchantment is triggered when an arrow hits a player, then the arrow needs to have a custom enchantment too.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

tag @s add temp.applying_enchantments

# Bow/Crossbow in main hand -> Check only enchantments in main hand.
execute on origin if items entity @s weapon.mainhand #ogvz:bow as @e[type=minecraft:arrow,tag=temp.applying_enchantments] at @s run function ogvz:custom_enchantments/arrow_mainhand

# Bow/Crossbow in off hand, but not in main hand -> Check only enchantments in off hand.
execute on origin if items entity @s weapon.offhand #ogvz:bow unless items entity @s weapon.mainhand #ogvz:bow as @e[type=minecraft:arrow,tag=temp.applying_enchantments] at @s run function ogvz:custom_enchantments/arrow_offhand

tag @s remove temp.applying_enchantments
tag @s add ogvz.enchantments_applied