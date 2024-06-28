# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: player_respawn
# Function Name: ogvz:tick/player_respawn
# File Purpose: Handles what happens to the player when they respawn.
# Created By: ropeFullOfHope
# 
# Created On: 2024.06.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: This function DOES NOT handle what happens to the player when they die. ogvz:misc/player_death handles that.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

tag @s remove ogvz.dead

### Player who hasn't joined the game yet.
# Reapply the effects.
effect give @s[tag=!ogvz.joined] minecraft:resistance infinite 4 true
effect give @s[tag=!ogvz.joined] minecraft:saturation infinite 0 true
# If the game is in progress/over, give them a magma cream.
execute if score &ogvz ogvz.game.phase matches 1..5 as @s[tag=!ogvz.joined] at @s run function ogvz:give/magma_cream

### Zombie player.
# Apply effects to them.
effect give @s[tag=ogvz.zombie] minecraft:blindness infinite 0 true
effect give @s[tag=ogvz.zombie] minecraft:invisibility infinite 0 true
