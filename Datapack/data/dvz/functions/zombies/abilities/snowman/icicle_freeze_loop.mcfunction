# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: icicle_freeze_loop
# Function Name: dvz:zombies/snowman/icicle_freeze_loop
# File Purpose: Teleport the player to the nearest freeze anchor.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.06
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Teleport the player to the nearest freeze anchor if too far away from it.
execute unless entity @e[type=minecraft:armor_stand,tag=freeze_anchor,distance=..0.1] at @e[type=minecraft:armor_stand,tag=freeze_anchor,limit=1,sort=nearest] run tp @s ~ ~ ~

scoreboard players remove @s DVZ.freeze.tick 1

# Kill the nearest freeze anchor if freeze timer ran out.
execute as @s[scores={DVZ.freeze.tick=..0}] run kill @e[type=minecraft:armor_stand,tag=freeze_anchor,limit=1,sort=nearest]