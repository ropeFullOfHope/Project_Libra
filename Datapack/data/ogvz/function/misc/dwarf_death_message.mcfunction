# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By:
# File Name: dwarf_death_message
# Function Name: ogvz:misc/dwarf_death_message
# File Purpose: Displays a special border, dwarf death message and remaining dwarf count in chat.
# Created By: ropeFullOfHope
# 
# Created On: 2024.06.28
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Instead of removing the ogvz.dwarf tag and recalculating the amount of dwarves, the dwarf count is reduced by 1.
execute as @s run scoreboard players remove Dwarves ogvz.game.player_count 1

# =====( [skull] )=====
execute as @s run tellraw @a [ \
  "", \
  {"text":"\u1100\u1101\u1102","font":"ogvz:custom"} \
]

# The default "> The dwarf [player] has fallen." or the player's custom death message.
execute as @s at @s run function ogvz:misc/custom_death_message

# "> X dwar(f/ves) remain(s)!"
execute unless score Dwarves ogvz.game.player_count matches 1 run tellraw @a [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"red"}, \
  {"score":{"objective":"ogvz.game.player_count","name":"Dwarves"},"color":"red","bold":true}, \
  {"text":" dwarves remain!","color":"red"} \
]
execute if score Dwarves ogvz.game.player_count matches 1 run tellraw @a [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"red"}, \
  {"score":{"objective":"ogvz.game.player_count","name":"Dwarves"},"color":"red","bold":true}, \
  {"text":" dwarf remains!","color":"red"} \
]
