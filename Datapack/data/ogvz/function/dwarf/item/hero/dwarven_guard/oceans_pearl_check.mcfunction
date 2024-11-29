# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: oceans_pearl_resize_check
# Function Name: ogvz:dwarf/hero/dwarven_guard/oceans_pearl_resize_check
# File Purpose: Checks if the ocean's pearl has been killed.
# Created By: ropeFullOfHope
# 
# Created On: 2024.11.20
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Return if the slime hitbox is still alive.
execute if entity @e[type=minecraft:slime,tag=ogvz.oceans_pearl_hitbox,distance=..1] run return 0

particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 100 force

# Play a sound. Dwarven Guard hears it at their own location, everyone else hears it at the broken Ocean's Pearl.
execute as @a[tag=ogvz.dwarf.class.hero.dwarven_guard] at @s run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 0.5 1
playsound minecraft:block.beacon.deactivate player @a[tag=!ogvz.dwarf.class.hero.dwarven_guard] ~ ~ ~ 1 0.5

title @a[tag=ogvz.dwarf.class.hero.dwarven_guard] actionbar [ \
  "", \
  {"text":"[Ocean\'s Pearl]","bold":true,"color":"light_purple"}, \
  {"text":" An ocean\'s pearl has been broken!","color":"light_purple"} \
]

scoreboard players set @s ogvz.misc.custom_bar_hide.seconds 3

kill @s
