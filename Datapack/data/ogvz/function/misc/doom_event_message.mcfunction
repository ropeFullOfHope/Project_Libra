# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: every mcfunction in ogvz:dwarf/disc/
# File Name: boss_message
# Function Name: ogvz:dwarf/doom_event_message
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

# =====( [star] )=====
tellraw @a [ \
  "", \
  {text:"\u1120\u1121\u1122",font:"ogvz:custom"} \
]

execute if score &ogvz ogvz.game.boss matches 1 run tellraw @s [ \
  "", \
  {"text":"▶ ","bold":true,"color":"light_purple"}, \
  {"text":"The doom event is: ","color":"light_purple"}, \
  {"text":"Ender Dragon","bold":true,"color":"light_purple"} \
]
execute if score &ogvz ogvz.game.boss matches 2 run tellraw @s [ \
  "", \
  {"text":"▶ ","bold":true,"color":"light_purple"}, \
  {"text":"The doom event is: ","color":"light_purple"}, \
  {"text":"Wither","bold":true,"color":"dark_purple"} \
]
execute if score &ogvz ogvz.game.boss matches 3 run tellraw @s [ \
  "", \
  {"text":"▶ ","bold":true,"color":"light_purple"}, \
  {"text":"The doom event is: ","color":"light_purple"}, \
  {"text":"Elder Guardian","bold":true,"color":"aqua"} \
]
execute if score &ogvz ogvz.game.boss matches 4 run tellraw @s [ \
  "", \
  {"text":"▶ ","bold":true,"color":"light_purple"}, \
  {"text":"The doom event is: ","color":"light_purple"}, \
  {"text":"Assassin","bold":true,"color":"dark_red"} \
]
