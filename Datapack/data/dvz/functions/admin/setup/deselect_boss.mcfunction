# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: deselect_boss
# Function Name: dvz:admin/setup/deselect_boss
# File Purpose: Deselects the currently selected boss.
# Created By: ropeFullOfHope
# 
# Created On: 2023.11.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute unless entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] run return 0

tag @e[type=minecraft:marker,tag=dvz] remove boss_dragon
tag @e[type=minecraft:marker,tag=dvz] remove boss_wither
tag @e[type=minecraft:marker,tag=dvz] remove boss_guardian
tag @e[type=minecraft:marker,tag=dvz] remove boss_assassin
tag @e[type=minecraft:marker,tag=dvz] remove boss_ai_dragon
tag @e[type=minecraft:marker,tag=dvz] remove boss_ai_wither