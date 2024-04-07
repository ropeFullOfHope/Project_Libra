# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: spawn
# Function Name: dvz:dwarves/spawn
# File Purpose: Teleports the player to the shrine and gives them dwarf discs.
# Created By: ropeFullOfHope
# 
# Created On: 2023.13.11
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

execute at @e[type=minecraft:marker,tag=zombie_spawn] run tp @s ~ ~ ~

team join z9DEAD @s

tag @s add zombies

give @a minecraft:carrot_on_a_stick{ \
  CustomModelData:9001, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Gold Nugget","italic":false}', \
    Lore:[ \
      '{"text":"Right-click to spawn in after the boss","color":"blue"}', \
      '{"text":"has died!","color":"blue"}' \
    ] \
  } \
}