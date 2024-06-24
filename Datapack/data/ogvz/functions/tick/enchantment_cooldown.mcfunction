# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: enchantment_cooldown
# Function Name: ogvz:tick/enchantment_cooldown
# File Purpose: Controls scoreboard objectives related to all custom enchantments.
# Created By: ropeFullOfHope
# 
# Created On: 2024.06.24
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Wither Warrior - Whispersong flame
scoreboard players remove @a[tag=ogvz.wither_warrior,scores={ogvz.wither_warrior.whispersong.flame.ticks=1..}] ogvz.wither_warrior.whispersong.flame.ticks 1
