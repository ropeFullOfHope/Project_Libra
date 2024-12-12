# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: custom_enchantments
# Function Name: ogvz:tick/custom_enchantments
# File Purpose: Handles effects of certain custom enchantments.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Curse of Limitation
execute as @s[tag=!ogvz.adventure.curse_of_limitation] if items entity @s weapon.mainhand #minecraft:pickaxes[minecraft:enchantments~[{"ogvz:unyielding_curse":1}]] run tag @s add ogvz.adventure.curse_of_limitation
execute as @s[tag=ogvz.adventure.curse_of_limitation] unless items entity @s weapon.mainhand #minecraft:pickaxes[minecraft:enchantments~[{"ogvz:unyielding_curse":1}]] run tag @s remove ogvz.adventure.curse_of_limitation
