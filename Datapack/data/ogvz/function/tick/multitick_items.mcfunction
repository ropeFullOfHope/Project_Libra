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

# Dwarves - Pearl Rod
execute as @s[tag=ogvz.mana.teleporting,scores={ogvz.dwarf.pearl_rod.warmup.seconds=..0}] at @s run function ogvz:dwarf/item/pearl_rod_teleport

# Assassin Slayer - Cloak of Shadows
execute as @s[tag=ogvz.dwarf.class.hero.assassin_slayer.invisible,level=0] at @s run function ogvz:dwarf/item/hero/assassin_slayer/cloak_of_shadows_cancel

# Dwarven Guard - Ocean's Pearl
execute as @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl] at @s run function ogvz:dwarf/item/hero/dwarven_guard/oceans_pearl_check
execute as @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl] at @s run function ogvz:dwarf/item/hero/dwarven_guard/oceans_pearl_buff
execute as @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl] at @s run function ogvz:dwarf/item/hero/dwarven_guard/oceans_pearl_rotate
