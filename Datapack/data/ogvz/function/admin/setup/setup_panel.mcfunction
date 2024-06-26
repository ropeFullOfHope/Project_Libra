# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: setup_panel
# Function Name: ogvz:admin/setup/setup_panel
# File Purpose: Displays the setup panel in the chat.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.08
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1

tellraw @s [ \
  "", \
  {"text":"=---------------- ","color":"gray","bold":true}, \
  {"text":"OGvZ Menu","color":"white","bold":true}, \
  {"text":" ----------------=\n","color":"gray","bold":true}, \
  {"text":"\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Spawn Lobby Location","color":"green"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/lobby/set_location"}}, \
  {"text":" to set "}, \
  {"text":"Spawn Lobby Location ","color":"green"}, \
  {"text":"at your feet.\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Standard Lobby","color":"green"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/lobby/standard"}}, \
  {"text":" to create a "}, \
  {"text":"Standard Lobby","color":"green"}, \
  {"text":".\n"}, \
  {"text":"\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Shrine Location","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/shrine/set_location"}}, \
  {"text":" to set "}, \
  {"text":"Shrine Location ","color":"yellow"}, \
  {"text":"at your feet.\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Standard Shrine","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/shrine/standard"}}, \
  {"text":" to create a "}, \
  {"text":"Standard Shrine","color":"yellow"}, \
  {"text":".\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Platform Shrine","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/shrine/platform"}}, \
  {"text":" to create a "}, \
  {"text":"Platform Shrine","color":"yellow"}, \
  {"text":".\n"}, \
  {"text":"\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Zombie Spawn Location","color":"red"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/zombie_spawn/set_location"}}, \
  {"text":" to set "}, \
  {"text":"Zombie Spawn Location ","color":"red"}, \
  {"text":"at your feet.\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Standard Zombie Spawn","color":"red"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/zombie_spawn/standard"}}, \
  {"text":" to create a "}, \
  {"text":"Standard Zombie Spawn","color":"red"}, \
  {"text":".\n"}, \
  {"text":"\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Boss Spawn Location","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss_spawn/set_location"}}, \
  {"text":" to set "}, \
  {"text":"Boss Spawn Location ","color":"light_purple"}, \
  {"text":"at your feet.\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Dragon","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/ender_dragon"}}, \
  {"text":" to select "}, \
  {"text":"Dragon ","color":"light_purple"}, \
  {"text":"as the boss.\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Wither","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/wither"}}, \
  {"text":" to select "}, \
  {"text":"Wither ","color":"light_purple"}, \
  {"text":"as the boss.\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Guardian","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/elder_guardian"}}, \
  {"text":" to select "}, \
  {"text":"Guardian ","color":"light_purple"}, \
  {"text":"as the boss.\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Assassin","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/assassin"}}, \
  {"text":" to select "}, \
  {"text":"Assassin ","color":"light_purple"}, \
  {"text":"as the boss.\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"AI Dragon","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/ai_ender_dragon"}}, \
  {"text":" to select "}, \
  {"text":"AI Dragon ","color":"light_purple"}, \
  {"text":"as the boss.\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_purple","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"AI Wither","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/ai_wither"}}, \
  {"text":" to select "}, \
  {"text":"AI Wither ","color":"light_purple"}, \
  {"text":"as the boss.\n"}, \
  {"text":"\n"}, \
  {"text":"  Click "}, \
  {"text":"[HERE]","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Start the Game","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/start_game"}}, \
  {"text":" to "}, \
  {"text":"Start the Game","color":"aqua"}, \
  {"text":".\n"}, \
  {"text":"\n"}, \
  {"text":"=------------------------------------------=","color":"gray","bold":true} \
]
