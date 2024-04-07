# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: custom_bars
# Function Name: dvz:tick/custom_bars
# File Purpose: Handles all custom bars that appear in the actionbar.
# Created By: ropeFullOfHope
# 
# Created On: 2024.02.08
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Show whispersong flame bar to Wither Warrior only if they are holding the whispersong.
execute as @s[tag=wither_warrior] if items entity @s weapon.* minecraft:bow[minecraft:custom_data={soul_power:1}] at @s run function dvz:dwarves/hero/wither_warrior/whispersong_flame_bar

# Show experience bar to Hoglin only if they are holding the evolution tagged pickaxe.
execute as @s[tag=hoglin] if items entity @s weapon.* minecraft:golden_pickaxe[minecraft:custom_data={evolution:1}] at @s run function dvz:zombies/hoglin/experience_bar