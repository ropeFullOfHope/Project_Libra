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

# All zombies have permanent night vision and conduit power.
effect give @s[tag=!ogvz.dead] minecraft:night_vision infinite 0 true
effect give @s[tag=!ogvz.dead] minecraft:conduit_power infinite 0 true

# Husks are immune to hunger.
effect clear @s[tag=ogvz.zombie.class.zombie_variant.husk] minecraft:hunger

# Aquatic zombies have permanent dolphin's grace.
effect give @s[tag=ogvz.zombie.aquatic] minecraft:dolphins_grace infinite 0 true

# Wither skeletons are immune to wither effect.
effect clear @s[tag=ogvz.zombie.class.skeleton_variant.wither_skeleton] minecraft:wither

# Spiders are immune to poison effect.
effect clear @s[tag=ogvz.zombie.class.spider] minecraft:poison

# Fire element zombies have permanent fire resistance.
effect give @s[tag=ogvz.zombie.element.fire] minecraft:fire_resistance infinite 0 true

# Ice element zombies are immune to frozen (bad luck) effect.
effect clear @s[tag=ogvz.zombie.element.ice] minecraft:unluck
