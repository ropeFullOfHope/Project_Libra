# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: 
# File Name: shrouding_fog_explode
# Function Name: dvz:zombies/phantom/shrouding_fog_explode
# File Purpose: Summons a blinding cloud.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.20
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

summon area_effect_cloud ~ ~ ~ { \
  ReapplicationDelay:1, \
  Radius:12f, \
  RadiusPerTick:0f, \
  Duration:200, \
  Color:2039587, \
  effects:[ \
    {id:"minecraft:blindness",amplifier:0b,duration:25} \
  ] \
}

summon area_effect_cloud ~ ~1 ~ { \
  ReapplicationDelay:1, \
  Radius:12f, \
  RadiusPerTick:0f, \
  Duration:200, \
  Color:2039587, \
  effects:[ \
    {id:"minecraft:blindness",amplifier:0b,duration:25} \
  ] \
}

summon area_effect_cloud ~ ~2 ~ { \
  ReapplicationDelay:1, \
  Radius:12f, \
  RadiusPerTick:0f, \
  Duration:200, \
  Color:2039587, \
  effects:[ \
    {id:"minecraft:blindness",amplifier:0b,duration:25} \
  ] \
}

kill @s