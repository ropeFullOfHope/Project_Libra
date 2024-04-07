# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: pollen_bomb_explode
# Function Name: dvz:zombies/bee/pollen_bomb_explode
# File Purpose: Summons a healing cloud.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.12
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

summon area_effect_cloud ~ ~ ~ { \
  ReapplicationDelay:40, \
  Radius:4f, \
  RadiusPerTick:0f, \
  Duration:200, \
  Color:16763904, \
  effects:[ \
    {id:"minecraft:luck",amplifier:100b,duration:200} \
  ] \
}
kill @s