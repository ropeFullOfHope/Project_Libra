# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/arrow_custom_enchantments
# File Name: arrow_offhand
# Function Name: dvz:custom_enchantments/arrow_offhand
# File Purpose: Applies certain Bow/Crossbow custom enchantments to the arrow.
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

execute on origin as @s[scores={DVZ.whispersong_flame.tick=1..}] if items entity @s weapon.offhand minecraft:bow[minecraft:custom_data={soul_power:1}] as @e[type=minecraft:arrow,tag=applying_enchantments] run tag @s add soul_power
execute as @s[tag=soul_power] run data modify entity @s damage set value 7.5d

execute on origin if items entity @s weapon.offhand minecraft:bow[minecraft:custom_data={decay:1}] as @e[type=minecraft:arrow,tag=applying_enchantments] run tag @s add decay

execute on origin if items entity @s weapon.offhand minecraft:bow[minecraft:custom_data={venom:1}] as @e[type=minecraft:arrow,tag=applying_enchantments] run tag @s add venom