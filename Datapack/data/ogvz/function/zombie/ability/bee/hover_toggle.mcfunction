title @s[predicate=!ogvz:is_grounded] actionbar [ \
  "", \
  {"text":"[Hover]","bold":true,"color":"red"}, \
  {"text":" You need to be on ground to toggle this ability.","color":"red"} \
]
execute as @s[predicate=!ogvz:is_grounded] run return 0

execute if items entity @s[tag=temp.use.mainhand] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{disabled:0}] run tag @s add temp.enabled
execute if items entity @s[tag=temp.use.offhand] weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data~{disabled:0}] run tag @s add temp.enabled

title @s[tag=temp.enabled] actionbar [ \
  "", \
  {"text":"[Hover]","bold":true,"color":"light_purple"}, \
  {"text":" Disabled!","color":"light_purple"} \
]

title @s[tag=!temp.enabled] actionbar [ \
  "", \
  {"text":"[Hover]","bold":true,"color":"light_purple"}, \
  {"text":" Enabled!","color":"light_purple"} \
]

playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

item modify entity @s[tag=temp.use.mainhand,tag=temp.enabled] weapon.mainhand ogvz:hover_disable
item modify entity @s[tag=temp.use.mainhand,tag=!temp.enabled] weapon.mainhand ogvz:hover_enable
item modify entity @s[tag=temp.use.offhand,tag=temp.enabled] weapon.offhand ogvz:hover_disable
item modify entity @s[tag=temp.use.offhand,tag=!temp.enabled] weapon.offhand ogvz:hover_enable

attribute @s[tag=temp.enabled] minecraft:gravity base reset
attribute @s[tag=temp.enabled] minecraft:gravity modifier remove ogvz.bee.hover.ascend.gravity
attribute @s[tag=temp.enabled] minecraft:gravity modifier remove ogvz.bee.hover.descend.gravity

attribute @s[tag=!temp.enabled] minecraft:gravity base set 0

tag @s remove temp.enabled
