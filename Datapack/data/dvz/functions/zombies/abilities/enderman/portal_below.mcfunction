# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: portal_above
# Function Name: dvz:zombies/enderman/portal_above
# File Purpose: Creates a portal above you and teleports you to it.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.30
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if entity @s[scores={DVZ.portal.cool=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Create Portal Above You]","bold":true,"color":"dark_red"}, \
  {"text":" You have ","color":"dark_red"}, \
  {"score":{"name":"@s","objective":"DVZ.portal.cool"},"bold":true,"color":"dark_red"}, \
  {"text":" seconds remaining!","color":"dark_red"} \
]
execute if entity @s[scores={DVZ.portal.cool=1..}] run return 0

# There needs to be 3 non-solid blocks starting at player's feet going up. If the condition fails, the player receives a warning.
execute unless block ~ ~ ~ #dvz:go_through run title @s actionbar [ \
  "", \
  {"text":"[Create Portal Below You]","bold":true,"color":"dark_red"}, \
  {"text":" There is not enough room!","color":"dark_red"} \
]
execute unless block ~ ~ ~ #dvz:go_through run return 0
execute unless block ~ ~1 ~ #dvz:go_through run title @s actionbar [ \
  "", \
  {"text":"[Create Portal Below You]","bold":true,"color":"dark_red"}, \
  {"text":" There is not enough room!","color":"dark_red"} \
]
execute unless block ~ ~1 ~ #dvz:go_through run return 0
execute unless block ~ ~2 ~ #dvz:go_through run title @s actionbar [ \
  "", \
  {"text":"[Create Portal Below You]","bold":true,"color":"dark_red"}, \
  {"text":" There is not enough room!","color":"dark_red"} \
]
execute unless block ~ ~2 ~ #dvz:go_through run return 0

# Tell player the ability has activated.
execute if entity @e[type=minecraft:marker,tag=ray,distance=3..] run title @s actionbar [ \
  "", \
  {"text":"[Create Portal Below You]","bold":true,"color":"dark_red"}, \
  {"text":" Poof!","color":"dark_red"} \
]

# Create a portal 1 block above where the player is standing.
execute as @s at @s positioned ~ ~1 ~ run function dvz:zombies/enderman/portal_create