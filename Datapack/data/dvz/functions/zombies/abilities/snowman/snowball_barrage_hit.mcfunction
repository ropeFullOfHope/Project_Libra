# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: snowball_barrage_hit
# Function Name: dvz:zombies/snowman/snowball_barrage_hit
# File Purpose: Hurts the player with freeze damage.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

damage @s[tag=dwarves] 20 minecraft:freeze by @e[type=minecraft:snowball,tag=damaging,limit=1,distance=..3]
damage @s[tag=zombies] 4 minecraft:freeze by @e[type=minecraft:snowball,tag=damaging,limit=1,distance=..3]