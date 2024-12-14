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

# Return if custom bar has been hidden.
execute as @s[scores={ogvz.misc.custom_bar_hide.seconds=1..}] run return 0

# Show dragon scale custom bar to Dragon Warrior if they are holding the dragon scale while in dragon form.
execute as @s[tag=ogvz.dwarf.class.hero.dragon_warrior.dragon_form] if items entity @s weapon.* minecraft:carrot_on_a_stick[minecraft:custom_data={active_id:4001}] at @s run function ogvz:dwarf/item/hero/dragon_warrior/dragon_scale_custom_bar

# Show whispersong's custom bar to Wither Warrior if they are holding the whispersong.
execute if items entity @s weapon.* minecraft:bow[enchantments~[{enchantments:"ogvz:soul_power"}]] at @s run function ogvz:dwarf/item/hero/wither_warrior/whispersong_custom_bar

# Show Ocean's Pearl custom bar to the Dwarven Guard if they are holding the ocean's pearl.
execute as @s[tag=ogvz.dwarf.class.hero.dwarven_guard] if items entity @s weapon.* minecraft:carrot_on_a_stick[minecraft:custom_data={active_id:4301}] at @s run function ogvz:dwarf/item/hero/dwarven_guard/oceans_pearl_custom_bar

# Show experience bar to Piglin if they are holding the evolution passive ability.
execute as @s[tag=ogvz.zombie.class.piglin,scores={ogvz.inventory.evolution=1..}] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:96}}}} run function ogvz:zombie/ability/piglin/evolution_custom_bar_1
execute as @s[tag=ogvz.zombie.class.piglin,scores={ogvz.inventory.evolution=1..}] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] unless predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:96}}}} run function ogvz:zombie/ability/piglin/evolution_custom_bar_0
execute as @s[tag=ogvz.zombie.class.piglin,scores={ogvz.inventory.evolution=1..}] unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine] run function ogvz:zombie/ability/piglin/evolution_custom_bar_0
