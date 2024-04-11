# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: lava_bucket
# Function Name: dvz:tick/lava_bucket
# File Purpose: Dumps lava on players with lava bucket.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.07
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: Made to prevent easy lava casting.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Return unless the player has at least 1 lava bucket.
execute unless entity @s[scores={ogvz.inventory.lava_bucket=1..}] run return 0

clear @s minecraft:lava_bucket

tellraw @s {"text":"The lava burns through the bucket!","color":"dark_red"}

playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1

setblock ~ ~ ~ minecraft:lava