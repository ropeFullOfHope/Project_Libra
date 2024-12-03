# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: arrow_check
# Function Name: ogvz:tick/arrow_check
# File Purpose: Checks arrows for things like custom enchantments.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.03
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

tag @s add temp.processing

# Run function on arrow if the arrow was shot from a whispersong by a wither warrior with at least one soul charge.
execute on origin as @s[tag=ogvz.dwarf.class.hero.wither_warrior,scores={ogvz.wither_warrior.soul_charges.count=1..}] as @n[type=#minecraft:arrows,tag=temp.processing,nbt={weapon:{components:{"minecraft:enchantments":{levels:{"ogvz:soul_power":1}}}}}] at @s run function ogvz:dwarf/item/hero/wither_warrior/whispersong_arrow

tag @s remove temp.processing

tag @s add temp.processed