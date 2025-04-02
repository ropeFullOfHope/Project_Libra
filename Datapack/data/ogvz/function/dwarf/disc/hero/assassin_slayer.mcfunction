# --------------------------------------------------------------------------------------------------------------------------------------------------------------
# Called By: ogvz:tick/active_detect
# File Name: assassin_slayer
# Function Name: ogvz:dwarf/heroes/disc/assassin_slayer
# File Purpose: Spawn items for the assassin slayer hero.
# Created By: ropeFullOfHope
# 
# Created On: 2024.10.21
# Last Modified On:
# Last Modified By:
#
# Credit to:
#
# Comments:
# --------------------------------------------------------------------------------------------------------------------------------------------------------------

# Remove the hero disc if the player used it.
item replace entity @s[tag=temp.use.mainhand] weapon.mainhand with minecraft:air
item replace entity @s[tag=temp.use.offhand] weapon.offhand with minecraft:air

effect clear @s

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes
execute as @s at @s run function ogvz:misc/clear_scoreboards

tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class
tag @s add ogvz.dwarf.class.hero
tag @s add ogvz.dwarf.class.hero.assassin_slayer
tag @s add ogvz.mana

team join d0ASSASSIN_SLAYER @s

execute as @s at @s run function ogvz:misc/drop_armor

# Equips the hero with their armor.
item replace entity @s armor.head with minecraft:chainmail_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Assassin Slayer Helmet","color":"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"head",id:"ogvz:head"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"head",id:"ogvz:head"} \
  ] \
]
item replace entity @s armor.chest with minecraft:chainmail_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Assassin Slayer Chestplate","color":"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:8,operation:"add_value",slot:"chest",id:"ogvz:chest"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"chest",id:"ogvz:chest"} \
  ] \
]
item replace entity @s armor.legs with minecraft:chainmail_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Assassin Slayer Leggings","color":"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:swift_sneak":3, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:6,operation:"add_value",slot:"legs",id:"ogvz:legs"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ] \
]
item replace entity @s armor.feet with minecraft:chainmail_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Assassin Slayer Boots","color":"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:feather_falling":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
    {type:"minecraft:movement_speed",amount:0.2,operation:"add_multiplied_total",slot:"feet",id:"ogvz:feet"} \
  ] \
]

# Gives the hero all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4200}, \
  minecraft:item_model="ogvz:betrayers_dagger", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name={"text":"Betrayer\'s Dagger","color":"red","bold":true}, \
  minecraft:lore=[ \
    {"text":"Assassinate","color":"blue","italic":false,"underlined":true}, \
    {"text":"Attacking a player from behind","color":"blue"}, \
    {"text":"will deal massive damage.","color":"blue"}, \
    {"text":"8 second cooldown","color":"red","italic":false}, \
    {"text":"Secondary Attack","color":"green","italic":false}, \
    {"text":" "}, \
    {"text":"When in Main Hand:","color":"gray","italic":false}, \
    {"text":" 8.5 Attack Damage","color":"dark_green","italic":false}, \
    {"text":" 20 Attack Speed","color":"dark_green","italic":false}, \
    {"text":" 2.5 Attack Reach","color":"dark_green","italic":false}, \
    {"text":"Unbreakable","color":"blue","italic":false}, \
    {"text":"Heroic Item","color":"gold","italic":false,"bold":true} \
  ], \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:attack_damage",amount:7.5,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:attack_speed",amount:16.0,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"}, \
    {type:"minecraft:entity_interaction_range",amount:-0.5,operation:"add_value",slot:"mainhand",id:"ogvz:mainhand"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable", \
      "minecraft:attribute_modifiers" \
    ] \
  } \
]

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4201}, \
  minecraft:item_model="ogvz:cloak_of_shadows", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name={"text":"Cloak of Shadows","color":"gray","bold":true}, \
  minecraft:lore=[ \
    {"text":"Makes you and your armor","color":"blue"}, \
    {"text":"invisible.","color":"blue"}, \
    {"text":"Taking or dealing damage will","color":"blue"}, \
    {"text":"cancel the invisibility.","color":"blue"}, \
    {"text":"You can manually cancel the","color":"blue"}, \
    {"text":"invisibility by using the cloak","color":"blue"}, \
    {"text":"of shadows again.","color":"blue"}, \
    {"text":"5 second cooldown","color":"red","italic":false}, \
    {"text":"Drains 2 mana per second","color":"red","italic":false}, \
    {"text":"Active Item","color":"green","italic":false}, \
    {"text":"Heroic Item","color":"gold","italic":false,"bold":true} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4202}, \
  minecraft:item_model="ogvz:mana_star", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name={"text":"Mana Star","color":"green","bold":true}, \
  minecraft:lore=[ \
    {"text":"Shoots a beam that gives mana","color":"blue"}, \
    {"text":"regeneration to a targeted","color":"blue"}, \
    {"text":"non-hero dwarf.","color":"blue"}, \
    {"text":"10 second cooldown","color":"red","italic":false}, \
    {"text":"Active Item","color":"green","italic":false}, \
    {"text":"Heroic Item","color":"gold","italic":false,"bold":true} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

tellraw @a [ \
  "", \
  {"text":"\u25B6 ","bold":true,"color":"gold"}, \
  {"text":"Due to their valiant efforts, ","color":"yellow"}, \
  {"selector":"@s"}, \
  {"text":" has been proclaimed as a ","color":"yellow"}, \
  {"text":"Hero","color":"gold","bold":true}, \
  {"text":"!","color":"yellow"} \
]

playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1

particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0.04 30
