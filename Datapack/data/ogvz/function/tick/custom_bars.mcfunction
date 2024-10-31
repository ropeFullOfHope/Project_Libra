# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: custom_bars
# Function Name: ogvz:tick/custom_bars
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

# Show dragon scale custom bar to Dragon Warrior only if they are holding the dragon scale while in dragon form.
execute as @s[tag=ogvz.dwarf.class.hero.dragon_warrior.dragon_form] if items entity @s weapon.* minecraft:carrot_on_a_stick[minecraft:custom_data={active_id:4001}] at @s run function ogvz:dwarf/item/hero/dragon_warrior/dragon_scale_custom_bar

# Show whispersong flame bar to Wither Warrior only if they are holding the whispersong.
execute as @s[tag=ogvz.dwarf.class.hero.wither_warrior] if items entity @s weapon.* minecraft:bow[minecraft:custom_data={soul_power:1}] at @s run function ogvz:dwarf/hero/wither_warrior/whispersong_flame_bar

# Show experience bar to Hoglin only if they are holding the evolution tagged pickaxe.
execute as @s[tag=ogvz.zombie.class.hoglin] if items entity @s weapon.* minecraft:golden_pickaxe[minecraft:custom_data={evolution:1}] at @s run function ogvz:zombie/hoglin/experience_bar
