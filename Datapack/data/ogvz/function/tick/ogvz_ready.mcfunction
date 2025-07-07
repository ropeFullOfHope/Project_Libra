# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: ogvz_ready
# Function Name: ogvz:tick/ogvz_ready
# File Purpose: General setup for new players.
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

gamemode adventure @s[predicate=!ogvz:is_admin]
gamemode creative @s[predicate=ogvz:is_admin]

execute as @s at @s run function ogvz:misc/clear_scoreboards
execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes

tag @s remove ogvz.joined
tag @s remove ogvz.admin

advancement revoke @s everything

scoreboard players enable @s ogvz.trigger.doom_event
scoreboard players enable @s ogvz.trigger.mark_for_death

scoreboard players set @s ogvz.misc.health 20
scoreboard players set @s ogvz.misc.food 20

team leave @s

xp set @s 0 levels
xp set @s 0 points

clear @s

effect clear @s

effect give @s minecraft:instant_health 1 28

effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:saturation infinite 0 true

recipe give @s *

execute as @s[predicate=ogvz:is_admin] run function ogvz:give/admin_handbook
execute as @s[predicate=!ogvz:is_admin] run function ogvz:give/rulebook

tellraw @s [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"Welcome to ","bold":true,"color":"gold"}, \
  {"text":"<","bold":true,"color":"gold"}, \
  {"text":"OG","bold":true,"color":"dark_aqua"}, \
  {"text":"v","bold":true,"color":"gold"}, \
  {"text":"Z","bold":true,"color":"dark_red"}, \
  {"text":">","bold":true,"color":"gold"}, \
  {"text":"!\n","bold":true,"color":"gold"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"By continuing to play, you agree to our ","color":"yellow"}, \
  {"text":"Privacy Policy","color":"gold"}, \
  {"text":"\n   and ","color":"yellow"}, \
  {"text":"TOS","color":"gold"}, \
  {"text":", provided ","color":"yellow"}, \
  {"text":"[HERE]","bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"text":"link","italic":true}]},"click_event":{"action":"open_url","url":"https://ogvz.weebly.com/TOS.html"}}, \
  {"text":".\n","color":"yellow"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"Please read the ","color":"yellow"}, \
  {"text":"Rules","color":"gold"}, \
  {"text":" inside the ","color":"yellow"}, \
  {"text":"Rules Book","color":"gold"}, \
  {"text":".\n","color":"yellow"}, \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"If you enjoy playing on the server, please consider\n   supporting us by donating ","color":"yellow"}, \
  {"text":"[HERE]","bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"text":"link","italic":true}]},"click_event":{"action":"open_url","url":"https://ogvz.weebly.com/store.html"}}, \
  {"text":".\n","color":"yellow"} \
]

execute store result score @s ogvz.game.reload_count run scoreboard players get &ogvz ogvz.game.reload_count

tag @s[predicate=ogvz:is_admin] add ogvz.admin
tag @s add ogvz.adventure.lobby
tag @s add ogvz.ready

execute as @s at @s run function ogvz:tick/join_server