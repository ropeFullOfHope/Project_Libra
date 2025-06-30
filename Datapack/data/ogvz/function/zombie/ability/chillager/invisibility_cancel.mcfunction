advancement revoke @s only ogvz:misc/chillager_take_or_deal_damage_while_invisible

scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20

title @s actionbar [ \
  "", \
  {"text":"[Invisibility]","bold":true,"color":"light_purple"}, \
  {"text":" Canceled!","color":"light_purple"} \
]

scoreboard players set @s ogvz.chillager.invisibility.cooldown.seconds 5

tag @s remove ogvz.zombie.class.chillager.invisible

effect clear @s minecraft:invisibility

# Reapply the textures of the armor.
item modify entity @s armor.head ogvz:set_empty_item_model_head
item modify entity @s armor.chest ogvz:set_leather_item_model_chest
item modify entity @s armor.legs ogvz:set_leather_item_model_legs
item modify entity @s armor.feet ogvz:set_leather_item_model_feet
