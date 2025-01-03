# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: handbook
# Function Name: ogvz:admin/handbook
# File Purpose: Gives admin manual to the player.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.10
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments: It may not look like it, but this is only one command.
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

give @s written_book[ \
  minecraft:item_model="ogvz:admin_handbook", \
  minecraft:written_book_content={ \
    title:"Admin Handbook", \
    author:"ropeFullOfHope", \
    generation:3, \
    resolved:true, \
    pages:[ \
      { \
        raw:'[ \
          {"text":""}, \
          {"text":"Admin Handbook\\n","bold":true,"underlined":true}, \
          {"text":"\\n"}, \
          {"text":"Chapters:\\n","bold":true}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Setup Tools"}]},"clickEvent":{"action":"change_page","value":"2"}}, \
          {"text":" Setup Tools\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Discs"}]},"clickEvent":{"action":"change_page","value":"7"}}, \
          {"text":" Discs\\n"}, \
          {"text":"\\n"}, \
          {"text":"\\n"}, \
          {"text":"\\n"}, \
          {"text":"\\n"}, \
          {"text":"\\n"}, \
          {"text":"\\n"}, \
          {"text":"\\n"}, \
          {"text":"\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Legacy Setup"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/setup_panel"}}, \
          {"text":" Legacy Setup\\n"} \
        ]' \
      }, \
      { \
        raw:'[ \
          {"text":""}, \
          {"text":"Setup Tools (1/5)\\n","bold":true,"underlined":true,"clickEvent":{"action":"change_page","value":"1"}}, \
          {"text":"\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Start Game!"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/start_game"}}, \
          {"text":" Start Game!\\n"}, \
          {"text":"\\n"}, \
          {"text":"Set Location:\\n","bold":true}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Lobby"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/lobby/set_location"}}, \
          {"text":" Lobby\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Shrine"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/shrine/set_location"}}, \
          {"text":" Shrine\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Zombie Spawn"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/zombie_spawn/set_location"}}, \
          {"text":" Zombie Spawn\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Boss Spawn"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss_spawn/set_location"}}, \
          {"text":" Boss Spawn\\n"} \
        ]' \
      }, \
      { \
        raw:'[ \
          {"text":"","clickEvent":{"action":"change_page","value":"1"}}, \
          {"text":"Setup Tools (2/5)\\n","bold":true,"underlined":true}, \
          {"text":"\\n"}, \
          {"text":"Place Lobby:\\n","bold":true}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Standard"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/lobby/standard"}}, \
          {"text":" Standard\\n"} \
        ]' \
      }, \
      { \
        raw:'[ \
          {"text":""}, \
          {"text":"Setup Tools (3/5)\\n","bold":true,"underlined":true,"clickEvent":{"action":"change_page","value":"1"}}, \
          {"text":"\\n"}, \
          {"text":"Place Shrine:\\n","bold":true}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Standard"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/shrine/standard"}}, \
          {"text":" Standard\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Platform"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/shrine/platform"}}, \
          {"text":" Platform\\n"} \
        ]' \
      }, \
      { \
        raw:'[ \
          {"text":""}, \
          {"text":"Setup Tools (4/5)\\n","bold":true,"underlined":true,"clickEvent":{"action":"change_page","value":"1"}}, \
          {"text":"\\n"}, \
          {"text":"Place Mob Spawn:\\n","bold":true}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Standard"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/zombie_spawn/standard"}}, \
          {"text":" Standard"} \
        ]' \
      }, \
      { \
        raw:'[ \
          {"text":""}, \
          {"text":"Setup Tools (5/5)\\n","bold":true,"underlined":true,"clickEvent":{"action":"change_page","value":"1"}}, \
          {"text":"\\n"}, \
          {"text":"Select Boss:\\n","bold":true}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Dragon"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/ender_dragon"}}, \
          {"text":" Dragon\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Wither"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/wither"}}, \
          {"text":" Wither\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Elder Guardian"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/elder_guardian"}}, \
          {"text":" Elder Guardian\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Assassin"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/assassin"}}, \
          {"text":" Assassin\\n"}, \
          {"text":"\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"AI Dragon"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/ai_ender_dragon"}}, \
          {"text":" AI Dragon\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"AI Wither"}]},"clickEvent":{"action":"run_command","value":"/execute as @s[tag=ogvz.admin] at @s run function ogvz:admin/setup/boss/ai_wither"}}, \
          {"text":" AI Wither\\n"} \
        ]' \
      }, \
      { \
        raw:'[ \
          {"text":""}, \
          {"text":"Discs (1/4)\\n","bold":true,"underlined":true,"clickEvent":{"action":"change_page","value":"1"}}, \
          {"text":"\\n"}, \
          {"text":"Dwarf Discs:\\n","bold":true}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Builder"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Builder\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Blacksmith"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Blacksmith\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Tailor"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Tailor\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Baker"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Baker\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Alchemist"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Alchemist\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Enchanter"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Enchanter\\n"}, \
          {"text":"\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Dragon Warrior"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Dragon Warrior\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Wither Warrior"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Wither Warrior\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Dwarven Guard"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Dwarven Guard\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Assassin Slayer"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Assassin Slayer"} \
        ]' \
      }, \
      { \
        raw:'[ \
          {"text":""}, \
          {"text":"Discs (2/4)\\n","bold":true,"underlined":true,"clickEvent":{"action":"change_page","value":"1"}}, \
          {"text":"\\n"}, \
          {"text":"Zombie Discs:\\n","bold":true}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Zombie"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Zombie\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Husk"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Husk\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Drowned"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Drowned\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Vindicator"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Vindicator\\n"}, \
          {"text":"\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Skeleton"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Skeleton\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Wither Skeleton"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Wither Skeleton\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Guardian"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Guardian\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Pillager"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Pillager\\n"} \
        ]' \
      }, \
      { \
        raw:'[ \
          {"text":""}, \
          {"text":"Discs (3/4)\\n","bold":true,"underlined":true,"clickEvent":{"action":"change_page","value":"1"}}, \
          {"text":"\\n"}, \
          {"text":"Zombie Discs:\\n","bold":true}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Creeper"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Creeper\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Spider"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Spider\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Ocelot"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Ocelot\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Wolf"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Wolf\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Bee"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Bee\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Blaze"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Blaze\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Chicken Nugget"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Chicken Nugget\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Chillager"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Chillager\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Phantom"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Phantom\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Snowman"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Snowman\\n"} \
        ]' \
      }, \
      { \
        raw:'[ \
          {"text":""}, \
          {"text":"Discs (4/4)\\n","bold":true,"underlined":true,"clickEvent":{"action":"change_page","value":"1"}}, \
          {"text":"\\n"}, \
          {"text":"Zombie Discs:\\n","bold":true}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Silverfish"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Silverfish\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Hoglin"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Hoglin\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Enderman"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Enderman\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Golem"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Golem\\n"}, \
          {"text":"\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Ghast"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Ghast\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Johnny"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Johnny\\n"}, \
          {"text":"[+]","hoverEvent":{"action":"show_text","value":[{"text":"Ravager"}]},"clickEvent":{"action":"run_command","value":"/say TODO"}}, \
          {"text":" Ravager\\n"} \
        ]' \
      } \
    ] \
  } \
]
