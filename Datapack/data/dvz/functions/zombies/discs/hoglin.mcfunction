# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: dvz:tick/active_detect
# File Name: hoglin
# Function Name: dvz:zombies/disc/hoglin
# File Purpose: Spawn items for the hoglin zombie class.
# Created By: ropeFullOfHope
# 
# Created On: 2023.09.20
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
effect give @s minecraft:speed infinite 1 true

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

tag @s add hoglin
tag @s add lvl_1
tag @s add selected_class
tag @s add suicide_pill

team join z5HOGLIN @s

# Equips the hoglin with their armor.
item replace entity @s armor.head with minecraft:player_head{ \
  SkullOwner:"MHF_Pig", \
  display:{ \
    Name:'{"text":"Hoglin Head","italic":false}' \
  }, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ], \
  AttributeModifiers:[ \
    {Slot:"head",AttributeName:"generic.armor",Name:"generic.armor",Amount:1.0d,UUID:[I;3,3,3,3]} \
  ] \
}
item replace entity @s armor.chest with minecraft:leather_chestplate{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:14516085}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.legs with minecraft:leather_leggings{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:14516085}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}
item replace entity @s armor.feet with minecraft:leather_boots{ \
  Unbreakable:1b, \
  HideFlags:64, \
  display:{color:14516085}, \
  Enchantments:[ \
    {id:"minecraft:binding_curse",lvl:1s} \
  ] \
}

# Gives hoglin all their items.
give @s golden_pickaxe{ \
  Unbreakable:1b, \
  HideFlags:14, \
  evolution:1, \
  adventure:1, \
  display:{ \
    Lore:[ \
      '{"text":"Evolution","italic":false,"color":"gray"}', \
      '{"text":""}', \
      '{"text":"Evolution","underlined":true,"italic":false,"color":"light_purple"}', \
      '{"text":"Using the tool will give you experience.","color":"light_purple"}', \
      '{"text":"You will evolve when you gain enough","color":"light_purple"}', \
      '{"text":"experience. You can evolve twice.","color":"light_purple"}', \
      '{"text":""}', \
      '{"text":"When in Main Hand:","italic":false,"color":"gray"}', \
      '{"text":" 0 Attack Damage","italic":false,"color":"dark_green"}', \
      '{"text":" 1.2 Attack Speed","italic":false,"color":"dark_green"}', \
      '{"text":"Unbreakable","italic":false,"color":"blue"}', \
      '{"text":""}', \
      '{"text":"Can Break:","italic":false,"color":"gray"}', \
      '{"text":"All Dwarf Blocks","italic":false,"color":"dark_gray"}', \
      '{"text":""}', \
      '{"text":"Cannot Break:","italic":false,"color":"gray"}', \
      '{"text":"Reinforced Bricks","italic":false,"color":"dark_gray"}' \
    ] \
  }, \
  CanDestroy:[ \
    "#dvz:dwarf_blocks" \
  ], \
  AttributeModifiers:[ \
    {AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-1.0d,Operation:0,UUID:[I;1,1,1,1],Slot:"mainhand"} \
  ] \
}
give @s minecraft:cooked_beef 64