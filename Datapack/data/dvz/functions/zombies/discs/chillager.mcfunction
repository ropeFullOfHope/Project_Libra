# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: chillager
# Function Name: dvz:zombies/disc/chillager
# File Purpose: Spawn items for the chillager zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.08.08
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

clear @s
effect clear @s

effect give @s minecraft:night_vision infinite 0 true
effect give @s minecraft:conduit_power infinite 0 true

# Gives chillager their permanent effects.
effect give @s minecraft:speed infinite 1 true
effect give @s minecraft:jump_boost infinite 2 true

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

tag @s add chillager
tag @s add selected_class
tag @s add suicide_pill
tag @s add ice_type

team join z4CHILLAGER @s

# Equips the chillager with their armor.
execute as @s at @s run function dvz:zombies/chillager/armor_up

# Gives creeper all their items.
give @s minecraft:stick{ \
  display:{ \
    Name:'{"text":"Knockback Stick","italic":false}' \
  }, \
  Enchantments:[ \
    {id:"minecraft:knockback",lvl:2} \
  ] \
}
give @s minecraft:cooked_beef 64
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7070, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Invisibility","italic":false,"color":"aqua"}', \
    Lore:[ \
      '{"text":"Turn invisible for a while.","color":"blue"}', \
      '{"text":"Single-use item","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7071, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Ice Cube","italic":false,"color":"aqua"}', \
    Lore:[ \
      '{"text":"Create an Ice bridge.","color":"blue"}', \
      '{"text":"Can be dropped to encase anyone who","color":"blue"}', \
      '{"text":"picks it up in Ice.","color":"blue"}', \
      '{"text":"15 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Single-use item","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
} 5