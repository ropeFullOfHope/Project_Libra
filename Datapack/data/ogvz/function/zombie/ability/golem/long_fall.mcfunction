# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: long_fall
# Function Name: ogvz:zombie/ability/golem/long_fall
# File Purpose: Creates paricles and plays a sound when the golem lands after a long fall.
# Created By: ropeFullOfHope
# 
# Created On: 2024.12.14
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

advancement revoke @s only ogvz:misc/golem_long_fall

playsound minecraft:entity.iron_golem.damage player @a ~ ~ ~ 8 0.5

particle minecraft:dust_pillar{block_state:"minecraft:stone"} ~ ~ ~ 1.5 0 1.5 0.1 50
