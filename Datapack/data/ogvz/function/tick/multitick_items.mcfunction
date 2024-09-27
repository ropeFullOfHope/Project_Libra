# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: multitick_items
# Function Name: ogvz:tick/multitick_items
# File Purpose: Function tree for items that last more than 1 tick.
# Created By: ropeFullOfHope
# 
# Created On: 2024.09.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Pearl Rod
execute as @s[tag=ogvz.mana.teleporting,scores={ogvz.dwarf.pearl_rod.warmup.seconds=..0}] at @s run function ogvz:dwarves/item/pearl_rod_teleport
