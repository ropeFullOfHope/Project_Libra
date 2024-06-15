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

# If the player hasn't joined the game yet and the game isn't set up yet, then tell them the game is still being set up (0 - setup phase).
execute as @s[tag=!ogvz.joined] if score &ogvz ogvz.game.phase matches 0 run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The game is still being set up!\n","bold":true,"color":"gold"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" Please be patient and wait for admins to setup the\n   game.\n","color":"yellow"} \
]

# If the player hasn't joined the game yet and the game is in progress, then tell them the game has already begun.
execute as @s[tag=!ogvz.joined] if score &ogvz ogvz.game.phase matches 1..4 run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The game has already begun!\n","bold":true,"color":"gold"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" Right-Click","color":"gold"}, \
  {"text":" your ","color":"yellow"}, \
  {"text":"Magma Cream","color":"gold"}, \
  {"text":" and select your class.\n","color":"yellow"} \
]

# If the game has ended, tell the player the game has ended (5 - game over phase).
execute if score &ogvz ogvz.game.phase matches 5 run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The game has ended!\n","bold":true,"color":"gold"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" Please be patient and wait for admins to reset the\n   server.\n","color":"yellow"} \
]

# If the player hasn't joined the game yet and the game is in progress, clear their inventory and give them a magma cream.
execute as @s[tag=!ogvz.joined] if score &ogvz ogvz.game.phase matches 1..4 run clear @s
execute as @s[tag=!ogvz.joined] if score &ogvz ogvz.game.phase matches 1..4 at @s run function ogvz:give/magma_cream

# Kill the player if they rejoined as a dwarf during last stand or game over phase.
execute as @s[tag=ogvz.dwarf] if score &ogvz ogvz.game.phase matches 4..5 run kill @s

# Kill the player if they rejoined as a zombie that has already picked a class.
execute as @s[tag=ogvz.zombie.class] run kill @s

# Make the progress/boss bar visible to the player if they joined during build/boss phase.
execute if score &ogvz ogvz.game.phase matches 1 run bossbar set ogvz:boss_timer players @a
execute if score &ogvz ogvz.game.phase matches 1 if score &ogvz ogvz.game.boss matches 1..2 run bossbar set ogvz:dragon_health players @a
execute if score &ogvz ogvz.game.phase matches 1 if score &ogvz ogvz.game.boss matches 5 run bossbar set ogvz:assassin_timer players @a
execute if score &ogvz ogvz.game.phase matches 1 if score &ogvz ogvz.game.boss matches 6 run bossbar set ogvz:guardian_health players @a
