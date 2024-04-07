# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: every mcfunction in dvz:dwarves/disc/
# File Name: boss_message
# Function Name: dvz:dwarves/boss_message
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

execute if entity @e[type=marker,tag=dvz,tag=boss_dragon] run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"AI Dragon","bold":true,"color":"light_purple"} \
]
execute if entity @e[type=marker,tag=dvz,tag=boss_ai_dragon] run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"Player Dragon","bold":true,"color":"light_purple"} \
]
execute if entity @e[type=marker,tag=dvz,tag=boss_wither] run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"AI Wither","bold":true,"color":"dark_purple"} \
]
execute if entity @e[type=marker,tag=dvz,tag=boss_ai_wither] run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"Player Wither","bold":true,"color":"dark_purple"} \
]
execute if entity @e[type=marker,tag=dvz,tag=boss_assassin] run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"Assassin","bold":true,"color":"dark_red"} \
]
execute if entity @e[type=marker,tag=dvz,tag=boss_guardian] run tellraw @s [ \
  "", \
  {"text":"\u25B6","bold":true,"color":"gold"}, \
  {"text":" The doom event is: ","color":"yellow"}, \
  {"text":"Elder Guardian","bold":true,"color":"dark_aqua"} \
]