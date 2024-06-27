# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick
# File Name: admin
# Function Name: ogvz:tick/admin
# File Purpose: Gives the player the admin tag and gives them the setup tools if the game hasn't started yet.
# Created By: ropeFullOfHope
# 
# Created On: 2023.10.07
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

tag @s add ogvz.admin

# Announce the player becoming an admin to all existing admins.
tellraw @a[tag=ogvz.admin] [ \
  "", \
  {"text":"ADMIN: ","bold":true,"color":"dark_red"}, \
  {"selector":"@s"}, \
  {"text":" is now tagged as an admin.","color":"red"} \
]

# Force creative mode so items given are not dropped.
gamemode creative @s

# Give the admin the setup tools.
execute as @s at @s run function ogvz:admin/handbook
