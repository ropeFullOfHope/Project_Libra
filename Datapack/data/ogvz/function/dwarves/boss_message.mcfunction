# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: every mcfunction in ogvz:dwarves/disc/
# File Name: boss_message
# Function Name: ogvz:dwarves/boss_message
# File Purpose: Inform players about the selected boss.
# Created By: ropeFullOfHope
# 
# Created On: 2023.07.04
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if score &ogvz ogvz.game.boss matches 1 run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"Ender Dragon","bold":true,"color":"light_purple"} \
]
execute if score &ogvz ogvz.game.boss matches 2 run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"AI Ender Dragon","bold":true,"color":"light_purple"} \
]
execute if score &ogvz ogvz.game.boss matches 3 run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"Wither","bold":true,"color":"dark_purple"} \
]
execute if score &ogvz ogvz.game.boss matches 4 run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"AI Wither","bold":true,"color":"dark_purple"} \
]
execute if score &ogvz ogvz.game.boss matches 5 run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"Assassin","bold":true,"color":"dark_red"} \
]
execute if score &ogvz ogvz.game.boss matches 6 run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"Elder Guardian","bold":true,"color":"dark_aqua"} \
]