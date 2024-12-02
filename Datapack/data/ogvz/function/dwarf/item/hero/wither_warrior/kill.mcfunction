# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: kill
# Function Name: ogvz:dwarf/hero/wither_warrior/kill
# File Purpose: Charges whispersong after killing a player as a wither warrior.
# Created By: ropeFullOfHope
# 
# Created On: 2024.02.17
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Revoke advancement, so it can be granted again.
advancement revoke @s only ogvz:misc/wither_warrior_kill_player

# Give player a set amount of soul charges.
scoreboard players add @s ogvz.wither_warrior.soul_charges.count 5

# Upper limit of soul charges.
execute as @s[scores={ogvz.wither_warrior.soul_charges.count=5..}] run scoreboard players set @s ogvz.wither_warrior.soul_charges.count 5

# Trigger soulstone if the player has it in their inventory.
execute as @s[scores={ogvz.inventory.soulstone=1..}] at @s run function ogvz:dwarf/item/hero/wither_warrior/soulstone
say "test"