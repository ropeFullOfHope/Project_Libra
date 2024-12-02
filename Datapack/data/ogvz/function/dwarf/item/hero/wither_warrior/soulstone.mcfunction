# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: soulstone
# Function Name: ogvz:dwarf/hero/wither_warrior/soulstone
# File Purpose: Gives mana to all other non-hero dwarves.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.01
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Give mana to all non-hero dwarves.
scoreboard players add @a[tag=ogvz.dwarf.class.builder,tag=!ogvz.dwarf.class.hero] ogvz.dwarf.mana_buildup.mana 8
scoreboard players add @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.builder,tag=!ogvz.dwarf.class.hero] ogvz.dwarf.mana_buildup.mana 16
