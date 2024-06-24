# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/custom_effects
# File Name: mana_regeneration_0
# Function Name: ogvz:custom_effects/mana_regeneration_0
# File Purpose: Regenerates mana beyond the cap.
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

# Give 1 mana/second. If the dwarf is a builder, then the mana regen is halved.
scoreboard players add @s[tag=!ogvz.dwarf.class.builder] ogvz.dwarf.mana_buildup.micromana 50
scoreboard players add @s[tag=ogvz.dwarf.class.builder] ogvz.dwarf.mana_buildup.micromana 25