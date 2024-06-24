# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: innate_abilities
# Function Name: ogvz:tick/innate_abilities
# File Purpose: Handles the zombie abilities that apply to certain classes without the need for a passive item.
# Created By: ropeFullOfHope
# 
# Created On: 2024.06.24
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: These abilities don't really matter that much and as such, do not need a passive ability item with a description.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Wither skeletons are immune to wither effect.
execute as @a[tag=ogvz.zombie.class.skeleton_variant.wither_skeleton] run effect clear @s minecraft:wither

# Spiders are immune to poison effect.
execute as @a[tag=ogvz.zombie.class.spider] run effect clear @s minecraft:poison 
