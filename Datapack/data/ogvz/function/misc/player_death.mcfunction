# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: advancement ogvz:misc/player_death
# File Name: player_death
# Function Name: ogvz:misc/player_death
# File Purpose: Handles what happens to the player when they die.
# Created By: ropeFullOfHope
# 
# Created On: 2024.06.27
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: This function DOES NOT handle what happens to the player when they respawn. ogvz:tick/respawn handles that.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

advancement revoke @s only ogvz:misc/player_death

tag @s remove ogvz.kill

tag @s add ogvz.dead

clear @s

xp set @s 0 levels
xp set @s 0 points

execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/clear_scoreboards
execute as @s at @s run function ogvz:misc/remove_attributes

execute as @s[tag=ogvz.dwarf] at @s if score &ogvz ogvz.game.phase matches 1..4 run function ogvz:misc/dwarf_death_message
execute as @s[tag=ogvz.dwarf] at @s if score &ogvz ogvz.game.phase matches 1..5 run function ogvz:misc/gravestone

### If the player joined the game, dying means they always join the zombie team.
# Add the zombie tag.
tag @s[tag=ogvz.joined_game] add ogvz.zombie
# Join them into the DEAD team.
team join z9DEAD @s[tag=ogvz.joined_game]
# Set their spawnpoint to the zombie spawn and make them face the shrine when they respawn.
execute at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] facing entity @n[type=minecraft:marker,tag=ogvz.marker.shrine] feet run spawnpoint @s[tag=ogvz.joined_game] ~ ~ ~ ~

# If the player hasn't joined the game, set their spawn point to lobby (in case they slept in a bed somwhere).
execute as @s[tag=!ogvz.joined_game] at @n[type=minecraft:marker,tag=ogvz.marker.lobby] run spawnpoint @s ~ ~ ~ ~
# If the player hasn't joined the game, restore their adventure mode tag.
tag @s[tag=!ogvz.joined_game] add ogvz.adventure.lobby

# Kill all wolves belonging to dead players.
execute as @e[type=minecraft:wolf] at @s run function ogvz:misc/wolf_kill
