# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick
# File Name: player_join
# Function Name: dvz:tick/player_join
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

scoreboard players set @s dvz.misc.leave_game 0

# If the player hasn't joined the game yet and the game isn't set up yet, then tell them the game is still being set up.
execute as @s[tag=!joined] if entity @e[type=minecraft:marker,tag=dvz,tag=setup_phase] run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The game is still being set up!\n","bold":true,"color":"gold"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" Please be patient and wait for admins to set the game up.","color":"yellow"} \
]

# If the player hasn't joined the game yet and the game is set up, then tell them the game has already begun.
execute as @s[tag=!joined] if entity @e[type=minecraft:marker,tag=dvz,tag=!setup_phase] run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The game has already begun!\n","bold":true,"color":"gold"}, \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" Right-Click","color":"gold"}, \
  {"text":" your ","color":"yellow"}, \
  {"text":"Magma Cream","color":"gold"}, \
  {"text":" and select your class.","color":"yellow"} \
]

# If the player hasn't joined the game yet and the game has already started, clear their inventory and give them a magma cream.
execute as @s[tag=!joined] if entity @e[type=minecraft:marker,tag=dvz,tag=!setup_phase] run clear @s
execute as @s[tag=!joined] if entity @e[type=minecraft:marker,tag=dvz,tag=!setup_phase] at @s run function dvz:give/magma_cream

# Kill the player if they rejoined as a dwarf during last stand or game over phase.
execute as @s[tag=dwarves] if entity @e[type=minecraft:marker,tag=dvz,tag=last_stand_phase] run kill @s
execute as @s[tag=dwarves] if entity @e[type=minecraft:marker,tag=dvz,tag=game_over_phase] run kill @s

# Kill the player if they rejoined as a zombie that has already picked a class.
execute as @s[tag=zombies,tag=selected_class] run kill @s

# Make the progress/boss bar visible to the player if they joined during build/boss phase.
execute if entity @e[type=minecraft:marker,tag=dvz,tag=build_phase] run bossbar set dvz:boss_timer players @a
execute if entity @e[type=minecraft:marker,tag=dvz,tag=boss_phase,tag=boss_dragon] run bossbar set dvz:dragon_health players @a
execute if entity @e[type=minecraft:marker,tag=dvz,tag=boss_phase,tag=boss_ai_dragon] run bossbar set dvz:dragon_health players @a
execute if entity @e[type=minecraft:marker,tag=dvz,tag=boss_phase,tag=boss_guardian] run bossbar set dvz:guardian_health players @a
execute if entity @e[type=minecraft:marker,tag=dvz,tag=boss_phase,tag=boss_assassin] run bossbar set dvz:assassin_timer players @a