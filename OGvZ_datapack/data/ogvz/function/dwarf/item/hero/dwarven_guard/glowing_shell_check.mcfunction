# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: glowing_shell_check
# Function Name: ogvz:dwarf/item/hero/dwarven_guard/glowing_shell_check
# File Purpose: Manages the active duration of the area of effect.
# Created By: ropeFullOfHope
# 
# Created On: 2024.11.29
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Kill if duration score has reached 0.
execute as @s[scores={ogvz.marker.glowing_shell.duration.seconds=..0}] run kill @s

# Decrement duration score.
execute as @s[scores={ogvz.marker.glowing_shell.duration.seconds=1..}] run scoreboard players add @s ogvz.marker.glowing_shell.duration.ticks 1
execute as @s[scores={ogvz.marker.glowing_shell.duration.ticks=20..}] run scoreboard players remove @s ogvz.marker.glowing_shell.duration.seconds 1
execute as @s[scores={ogvz.marker.glowing_shell.duration.ticks=20..}] run scoreboard players set @s ogvz.marker.glowing_shell.duration.ticks 0
