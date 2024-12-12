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

# Revoke advancement, so it can be granted again.
advancement revoke @s only ogvz:misc/wither_warrior_kill_player

# Return if player does not have a soulstone in their inventory.
execute as @s[scores={ogvz.inventory.soulstone=0}] run return 0

# Give mana to all non-hero dwarves.
scoreboard players add @a[tag=ogvz.dwarf.class.builder,tag=!ogvz.dwarf.class.hero] ogvz.dwarf.mana_buildup.mana 8
scoreboard players add @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.builder,tag=!ogvz.dwarf.class.hero] ogvz.dwarf.mana_buildup.mana 16