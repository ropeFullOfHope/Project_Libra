# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: player_join
# Function Name: ogvz:tick/player_join
# File Purpose: General setup for players who rejoined the server.
# Created By: ropeFullOfHope
# 
# Created On: 2023.11.13
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

scoreboard players set @s ogvz.misc.leave_game 0

# If the player has joined after a datapack reload, execute ogvz:tick/ogvz_ready first.
execute unless score @s ogvz.game.reload_count = &ogvz ogvz.game.reload_count run return run function ogvz:tick/ogvz_ready

# If the player hasn't joined the game yet and the game isn't set up yet, then tell them the game is still being set up (0 - setup phase).
execute as @s[tag=!ogvz.joined] if score &ogvz ogvz.game.phase matches 0 run tellraw @s [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"The game is still being set up!\n","bold":true,"color":"gold"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"Please wait for admins to setup the game.\n","color":"yellow"} \
]

# If the player hasn't joined the game yet and the game is in progress, then tell them the game has already begun.
execute as @s[tag=!ogvz.joined] if score &ogvz ogvz.game.phase matches 1..4 run tellraw @s [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"The game has already begun!\n","bold":true,"color":"gold"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"Right-Click","color":"gold"}, \
  {"text":" your ","color":"yellow"}, \
  {"text":"Magma Cream","color":"gold"}, \
  {"text":" and select your class.\n","color":"yellow"} \
]

# If the game has ended, tell the player the game has ended (5 - game over phase).
execute if score &ogvz ogvz.game.phase matches 5 run tellraw @s [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"The game has ended!\n","bold":true,"color":"gold"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"Please wait for admins to reset the server.\n","color":"yellow"} \
]

# If the player hasn't joined the game yet set their spawnpoint to the lobby and teleport them there.
execute as @s[tag=!ogvz.joined] at @n[type=minecraft:marker,tag=ogvz.marker.lobby] run spawnpoint @s ~ ~ ~ 0
execute as @s[tag=!ogvz.joined] at @n[type=minecraft:marker,tag=ogvz.marker.lobby] run tp @s ~ ~ ~ 0 0

# If the player hasn't joined the game yet and the game is in progress/over, clear their inventory and give them a magma cream.
execute as @s[tag=!ogvz.joined] if score &ogvz ogvz.game.phase matches 1..5 run clear @s
execute as @s[tag=!ogvz.joined] if score &ogvz ogvz.game.phase matches 1..5 at @s run function ogvz:give/join_game_magma_cream

# Kill the player if they rejoined as a dwarf during last stand or game over phase.
execute as @s[tag=ogvz.dwarf] if score &ogvz ogvz.game.phase matches 4..5 run kill @s

# Kill the player if they rejoined as a zombie that has already picked a class.
execute as @s[tag=ogvz.zombie.class] run kill @s

# Make the progress/boss bars visible to the player.
bossbar set ogvz:boss_timer players @a
bossbar set ogvz:dragon_health players @a
bossbar set ogvz:assassin_timer players @a
bossbar set ogvz:guardian_health players @a
