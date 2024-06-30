# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: shrine_health
# Function Name: ogvz:tick/shrine_health
# File Purpose: Calculates the shrine health.
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

# If a shrine block is broken during setup phase (0) alert the admins.
execute if score &ogvz ogvz.game.phase matches 0 as @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] at @s unless block ~ ~ ~ minecraft:gold_block run tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"WARNING: ","bold":true,"color":"dark_red"}, \
  {"text":"A shrine block has been broken. Shrine needs to be setup again. Replacing the block of gold manually will NOT work.","color":"red"} \
]

# Kill all shrine block markers that are no longer inside a gold block.
execute as @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] at @s unless block ~ ~ ~ minecraft:gold_block run kill @s

# Update shrine health scoreboard.
scoreboard players set &ogvz ogvz.game.shrine_health 0
execute as @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] run scoreboard players add &ogvz ogvz.game.shrine_health 1