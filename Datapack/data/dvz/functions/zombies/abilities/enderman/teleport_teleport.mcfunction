# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:zombies/enderman/teleport
# File Name: teleport_teleport
# Function Name: dvz:zombies/enderman/teleport_teleport
# File Purpose: Teleport the player to around where they were looking.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.29
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute store result score @s DVZ.result.score as @s positioned ^ ^ ^-0.1 run function dvz:zombies/enderman/teleport_check
execute if entity @s[scores={DVZ.result.score=1..}] run return 0

execute store result score @s DVZ.result.score as @s positioned ~ ~1 ~ run function dvz:zombies/enderman/teleport_check
execute if entity @s[scores={DVZ.result.score=1..}] run return 0

execute store result score @s DVZ.result.score as @s positioned ~ ~2 ~ run function dvz:zombies/enderman/teleport_check
execute if entity @s[scores={DVZ.result.score=1..}] run return 0

execute store result score @s DVZ.result.score as @s positioned ~ ~3 ~ run function dvz:zombies/enderman/teleport_check
execute if entity @s[scores={DVZ.result.score=1..}] run return 0

title @s actionbar [ \
  "", \
  {"text":"[Teleport]","bold":true,"color":"dark_red"}, \
  {"text":" Cannot teleport there!","color":"dark_red"} \
]