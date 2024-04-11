# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: kill
# Function Name: dvz:dwarves/hero/wither_warrior/kill
# File Purpose: Charges whispersong after killing a player as a wither warrior.
# Created By: ropeFullOfHope
# 
# Created On: 2024.02.17
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

advancement revoke @s only dvz:misc/wither_warrior_kill_player

scoreboard players add @s dvz.wither_warrior.whispersong_flame.ticks 720

# Upper limit
execute as @s[scores={dvz.wither_warrior.whispersong_flame.ticks=3600..}] run scoreboard players set @s dvz.wither_warrior.whispersong_flame.ticks 3600