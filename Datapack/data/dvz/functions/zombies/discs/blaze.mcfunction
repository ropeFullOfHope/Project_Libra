# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: blaze
# Function Name: dvz:zombies/disc/blaze
# File Purpose: Spawn items for the blaze zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.18
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
effect give @s minecraft:fire_resistance infinite 0 true

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

tag @s add blaze
tag @s add selected_class
tag @s add suicide_pill

team join z4BLAZE @s

# Equips the blaze with their armor.
execute as @s at @s run function dvz:zombies/blaze/armor_up

# Gives blaze all their items.
item replace entity @s hotbar.8 with minecraft:warped_fungus_on_a_stick{ \
  CustomModelData:8002, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Descend","italic":false,"color":"dark_red"}', \
    Lore:[ \
      '{"text":"Hold in off-hand to slowly descend.","color":"blue"}', \
      '{"text":"Held Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:blaze_rod{ \
  Enchantments:[ \
    {id:"minecraft:fire_aspect",lvl:10s} \
  ] \
}
give @s minecraft:cooked_beef 64
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7100, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Fireball","italic":false,"color":"red"}', \
    Lore:[ \
      '{"text":"Shoot a fireball that sets the area it","color":"blue"}', \
      '{"text":"hits on fire.","color":"blue"}', \
      '{"text":"5 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7101, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Fireblast","italic":false,"color":"red"}', \
    Lore:[ \
      '{"text":"Evaporate all water and deal fire damage","color":"blue"}', \
      '{"text":"to everybody near you.","color":"blue"}', \
      '{"text":"Players on fire take a lot more damage.","color":"blue"}', \
      '{"text":"10 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:carrot_on_a_stick{ \
  CustomModelData:7102, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Firefly","italic":false,"color":"red"}', \
    Lore:[ \
      '{"text":"Became invulnerable and fly for a short","color":"blue"}', \
      '{"text":"time.","color":"blue"}', \
      '{"text":"Use while flying to stop flying.","color":"blue"}', \
      '{"text":"15 second cooldown","italic":false,"color":"red"}', \
      '{"text":"Active Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:warped_fungus_on_a_stick{ \
  CustomModelData:5070, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Fire Coat","italic":false,"color":"dark_red"}', \
    Lore:[ \
      '{"text":"Receive Protection while on fire.","color":"blue"}', \
      '{"text":"Passive Ability","italic":false,"color":"green"}' \
    ] \
  } \
}
give @s minecraft:warped_fungus_on_a_stick{ \
  CustomModelData:5071, \
  Unbreakable:1b, \
  HideFlags:4, \
  display:{ \
    Name:'{"text":"Fire Shield","italic":false,"color":"dark_red"}', \
    Lore:[ \
      '{"text":"Mobs near you receive Fire Resistance","color":"blue"}', \
      '{"text":"effect.","color":"blue"}', \
      '{"text":"Passive Ability","italic":false,"color":"green"}' \
    ] \
  } \
}