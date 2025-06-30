execute as @s[tag=ogvz.zombie.class.chillager.invisible] at @s run return run function ogvz:zombie/ability/chillager/invisibility_cancel

scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20

execute if entity @s[scores={ogvz.chillager.invisibility.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {"text":"[Invisibility]","bold":true,"color":"red"}, \
  {"text":" You have ","color":"red"}, \
  {"score":{"name":"@s","objective":"ogvz.chillager.invisibility.cooldown.seconds"},"bold":true,"color":"red"}, \
  {"text":" seconds remaining!","color":"red"} \
]
execute if entity @s[scores={ogvz.chillager.invisibility.cooldown.seconds=1..}] run return 0

title @s actionbar [ \
  "", \
  {"text":"[Invisibility]","bold":true,"color":"green"}, \
  {"text":" Poof!","color":"green"} \
]

tag @s add ogvz.zombie.class.chillager.invisible

effect give @s minecraft:invisibility infinite 0

# Replace the textures of the armor with a blank ones.
item modify entity @s armor.head ogvz:remove_item_model_head
item modify entity @s armor.chest ogvz:remove_item_model_chest
item modify entity @s armor.legs ogvz:remove_item_model_legs
item modify entity @s armor.feet ogvz:remove_item_model_feet

playsound minecraft:entity.breeze.inhale player @a ~ ~ ~ 1 0.5

particle minecraft:spit ~ ~1 ~ 0 0 0 0.2 50
