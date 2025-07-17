clear @s
effect clear @s

effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes
execute as @s at @s run function ogvz:misc/clear_scoreboards

tag @s add ogvz.zombie
tag @s add ogvz.zombie.class
tag @s add ogvz.zombie.class.enderman
tag @s add ogvz.zombie.suicide_pill

team join z6ENDERMAN @s

# Equips the enderman with their armor (leather tier).
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Enderman Head","color":"aqua"}, \
  minecraft:item_model="ogvz:enderman_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:1,operation:"add_value",slot:"head",id:"ogvz:head"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Enderman Chestplate"}, \
  minecraft:dyed_color=1052688, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Enderman Leggings"}, \
  minecraft:dyed_color=1052688, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Enderman Boots"}, \
  minecraft:dyed_color=1052688, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:1,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]

# Gives enderman all their items.
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6600}, \
  minecraft:item_model="ogvz:teleport", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Teleport","color":"light_purple"}, \
  minecraft:lore=[ \
    {"text":"Teleport to a targeted block.","color":"blue"}, \
    {"text":"10 second cooldown","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6601}, \
  minecraft:item_model="ogvz:create_portal", \
  minecraft:unbreakable={}, \
  minecraft:item_name={"text":"Create Portal","color":"light_purple"}, \
  minecraft:lore=[ \
    {"text":"Open an Ender Portal above/below","color":"blue"}, \
    {"text":"you.","color":"blue"}, \
    {"text":"Other zombies will be able to","color":"blue"}, \
    {"text":"teleport to the ender portal.","color":"blue"}, \
    {"text":"Normally you will create the","color":"blue"}, \
    {"text":"ender portal high above you, but","color":"blue"}, \
    {"text":"you can sneak to place it right","color":"blue"}, \
    {"text":"below you instead.","color":"blue"}, \
    {"text":"You need enough room above you","color":"blue"}, \
    {"text":"to create the ender portal.","color":"blue"}, \
    {"text":"The ender portal will close when","color":"blue"}, \
    {"text":"one of its end stones is broken.","color":"blue"}, \
    {"text":"Creating the ender portal takes time.","color":"blue"}, \
    {"text":"You will not be able to move","color":"blue"}, \
    {"text":"during the process and you will","color":"blue"}, \
    {"text":"be interrupted if you take","color":"blue"}, \
    {"text":"damage or teleport.","color":"blue"}, \
    {"text":"You can manually interrupt the","color":"blue"}, \
    {"text":"ability by using it again.","color":"blue"}, \
    {"text":"15 second cooldown","color":"red","italic":false}, \
    {"text":"Single-use","color":"red","italic":false}, \
    {"text":"Active Ability","color":"green","italic":false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
give @s minecraft:cooked_beef 64
